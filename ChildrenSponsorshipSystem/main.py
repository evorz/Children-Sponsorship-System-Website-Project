from flask import Flask,render_template,flash,redirect,url_for,session,logging,request
from flask_mysqldb import MySQL
from wtforms import Form,StringField,FloatField,IntegerField,TextAreaField,PasswordField,validators,DateField
from passlib.hash import sha256_crypt
from functools import wraps

#Kullancının Girşini Kontrol Ediyor. ELLEMEYİN!
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "logged_in" in session:  
            return f(*args, **kwargs)
        else:
            flash("You need to log-in first","danger")
            return redirect(url_for("login"))     
    return decorated_function

#Kullanıcı Kayıt Formu. ELLEMEYİN!
class RegisterForm(Form):
    name = StringField("Name Surname",validators = [validators.Length(min = 4, max = 25)])
    username = StringField("Username",validators = [validators.Length(min = 5, max = 35)])
    email = StringField("Email",validators = [validators.Email(message = "Please enter a valid email!")])
    phone = StringField("Phone Number",validators = [validators.Length(min = 1, max = 15)])
    password = PasswordField("Password",validators = [
        validators.DataRequired(message = "Please enter a password!"),
        validators.EqualTo(fieldname = "confirm",message = "Password doesnt match!")
    ])
    confirm = PasswordField("Confirm Password")

#Kullanıcı Giriş Formu. ELLEMEYİN!    
class LoginForm(Form):
    username = StringField("Username")
    password = PasswordField("Password")
    
class ChangePasswordForm(Form):
    old_password = PasswordField("Current Password")
    new_password = PasswordField("New Password")
        
    
#MySQL bağlantısının yapıldığı yer.
app = Flask(__name__)
app.secret_key = "css"
app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "css"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"
mysql = MySQL(app)


#Ana sayfa için
@app.route("/")
def index():
    return render_template("index.html")

#About sayfası için
@app.route("/about")
def about():
    return render_template("about.html")

#Contact sayfası için
@app.route("/contact")
def contact():
    return render_template("contact.html")

#Kayıt sayfası için
@app.route("/register",methods = ["GET","POST"])
def register():
    form = RegisterForm(request.form)
    
    if request.method == "POST" and form.validate():
        
        name = form.name.data
        username = form.username.data
        email = form.email.data
        password = sha256_crypt.encrypt(form.password.data)
        phone = form.phone.data
        
        cursor = mysql.connection.cursor()
        
        query = "Insert into users (name,username,email,password,phone) VALUES(%s,%s,%s,%s,%s)"
        
        cursor.execute(query,(name,username,email,password,phone))
        
        mysql.connection.commit()
        
        cursor.close()
        flash("You successfully register!","success")
         
        return redirect(url_for("login"))
        
    else:
        return render_template("register.html",form = form)

#Login sayfası için
@app.route("/login",methods = ["GET","POST"])
def login():
    form = LoginForm(request.form)
    
    if request.method == "POST":
        
        username = form.username.data
        password_entered = form.password.data
        
        cursor = mysql.connection.cursor()
        
        query = "Select * from users where username = %s"
        
        result = cursor.execute(query, (username,))
        
        if result > 0:
            data = cursor.fetchone()
            real_password = data["password"]
            user_id = data["id"]
            if sha256_crypt.verify(password_entered,real_password):
                flash("You successfuly login!","success")
                
                session["logged_in"] = True
                session["username"] = username
                session['id'] = user_id
                
                
                return redirect(url_for("index"))
            
            else:
                flash("Wrong password! Please try again.","danger")
        
        else:
            flash("No user found for this username!","danger")
            return redirect(url_for("login"))
        
    return render_template("login.html",form = form)


@app.route("/profile/changepassword/<string:id>",methods = ["GET","POST"])
def change_password(id):
    form = ChangePasswordForm(request.form)
    
    if request.method == "POST":
        
        password_entered = form.old_password.data
        new_password = sha256_crypt.encrypt(form.new_password.data)
        
        cursor = mysql.connection.cursor()
        
        query = "Select * from users where id = %s"
        
        result = cursor.execute(query, (id,))
        
        if result > 0:
            data = cursor.fetchone()
            real_password = data["password"]
            if sha256_crypt.verify(password_entered,real_password):
                form = ChangePasswordForm(request.form)

                query2 = "Update users Set password = %s where id = %s"
                
                cursor = mysql.connection.cursor()
                
                cursor.execute(query2,(new_password,id))
                
                mysql.connection.commit()

                flash("You successfuly change your password!","success")
                return redirect(url_for("index"))
            
            else:
                flash("Wrong password!Please try again.","danger")
        
        else:
            return redirect(url_for("/profile/changepassword/{}".format(id)))
        
    return render_template("changepassword.html",form = form)
   
@app.route("/profile/<string:id>")
def profile(id):
    cursor = mysql.connection.cursor()
    
    query = "Select * from users where id = %s"
    
    result = cursor.execute(query, (id,))
    
    if result > 0:
        profile = cursor.fetchone()
        
        query2 = "SELECT * FROM donations where userID = %s"
        result2 = cursor.execute(query2,(id,))
        donations = cursor.fetchall()
        return render_template("profile.html",profile = profile,donations = donations)
    else:
        return render_template("profile.html")
    
@app.route("/profile/edit/<string:id>",methods = ["GET","POST"])
@login_required
def update_profile(id):
    if request.method == "GET":
        cursor = mysql.connection.cursor()
        
        query = "Select * from users where id = %s "
        result = cursor.execute(query,(id,))
        
        if result == 0:
            flash("You dont have a permission to edit this profile!","danger")
            return redirect(url_for("index"))
        else:
            user = cursor.fetchone()
            form = RegisterForm()
            
            form.name.data = user["name"]
            form.email.data = user["email"]
            form.phone.data = user["phone"]
            return render_template("updateprofile.html",form = form)
            
    else:
        #post request
        form = RegisterForm(request.form)
        
        newName = form.name.data
        newEmail = form.email.data
        newPhone = form.phone.data

        
        query2 = "Update users Set name = %s,email = %s,phone = %s where id = %s"
        
        cursor = mysql.connection.cursor()
        
        cursor.execute(query2,(newName,newEmail,newPhone,id))
        
        mysql.connection.commit()
        
        flash("Profile successfuly updated!","success")
        
        return redirect(url_for("index"))


#Article id alarak o article özel sayfaya yönlendirmek için
@app.route("/article/<string:id>")
def article(id):
    cursor = mysql.connection.cursor()
    
    query = "Select * from articles where id = %s"
    
    result = cursor.execute(query, (id,))
    
    if result > 0:
        article = cursor.fetchone()
        return render_template("article.html",article = article)
    else:
        return render_template("article.html")

#Child id alarak o child özel sayfaya yönlendirmek için   
@app.route("/child/<string:id>")
def child(id):
    cursor = mysql.connection.cursor()
    
    query = "Select * from childs where id = %s"
    
    result = cursor.execute(query, (id,))
    
    if result > 0:
        child = cursor.fetchone()
        return render_template("child.html",child = child)
    else:
        return render_template("child.html")
    
#Çıkış yapmak için   
@app.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("index"))

#Makaleleri listeli bir şekilde göstermesi için
@app.route("/articles")
def articles():
    cursor = mysql.connection.cursor()
    
    query = "Select * from articles"
    
    result = cursor.execute(query)
    
    if result > 0:
        articles = cursor.fetchall()
        return render_template("articles.html",articles = articles)
    else:
        return render_template("articles.html")

#Çocukları listeli bir şekilde göstermesi için    
@app.route("/childs")
def childs():
    cursor = mysql.connection.cursor()
    
    query = "Select * from childs"
    
    result = cursor.execute(query)
    
    if result > 0:
        childs = cursor.fetchall()
        return render_template("childs.html",childs = childs)
    else:
        return render_template("childs.html")

#Adminler için dashboard ekranı çocuk ve makale eklemelerini sağlamak, ve gerekli kontrolleri yapmak için
@app.route("/dashboard")
@login_required
def dashboard():
    cursor = mysql.connection.cursor()
    
    query = "SELECT * FROM articles"
    result = cursor.execute(query)
    articles = cursor.fetchall()
    
    query2 = "SELECT * FROM childs"
    result2 = cursor.execute(query2)
    childs = cursor.fetchall()
    
    query3 = "SELECT * FROM donations"
    result3 = cursor.execute(query3)
    donations = cursor.fetchall()
    
    query4 = "SELECT * FROM users"
    result3 = cursor.execute(query4)
    users = cursor.fetchall()
    
    if result > 0 or result2 > 0 or result3 > 0 or result4 > 0:
        return render_template("dashboard.html", articles=articles, childs=childs, donations = donations, users = users)
    else:
        return render_template("dashboard.html")

#Makale ekleme sayfası için
@app.route("/addarticle",methods = ["GET","POST"])
def addarticle():
    form = ArticleForm(request.form)
    
    if request.method == "POST" and form.validate():
        title = form.title.data
        content = form.content.data
        
        cursor = mysql.connection.cursor()
        query = "Insert into articles (title,author,content) VALUES(%s,%s,%s)"
        
        cursor.execute(query,(title,session["username"],content))
        
        mysql.connection.commit()
        
        cursor.close()
        
        flash("Article successfully added!","success")
        
        return redirect(url_for("dashboard"))

    return render_template("addarticle.html",form = form)

#Çocuk ekleme sayfası için
@app.route("/addchild",methods = ["GET","POST"])
def addchild():
    form = ChildForm(request.form)
    
    if request.method == "POST" and form.validate():
        name = form.name.data
        age = form.age.data
        iban = form.iban.data
        bank = form.bank.data
        about = form.about.data
        
        
        cursor = mysql.connection.cursor()
        query = "Insert into childs (name,age,iban,bank,about) VALUES(%s,%s,%s,%s,%s)"
        
        cursor.execute(query,(name,age,iban,bank,about))
        
        mysql.connection.commit()
        
        cursor.close()
        
        flash("Child successfully added!","success")
        
        return redirect(url_for("dashboard"))

    return render_template("addchild.html",form = form)

#Makale numarasına göre makaleyi silmek için
@app.route("/delete/article/<string:id>")
@login_required
def delete_article(id):
    cursor = mysql.connection.cursor()
    
    query = "Select * from articles where id = %s"
    
    result = cursor.execute(query,(id,))
    
    if result > 0:
        query2 = "Delete from articles where id = %s"
        
        cursor.execute(query2,(id,))
        
        mysql.connection.commit()
        
        return redirect(url_for("dashboard"))
    else:
        flash("There is no such a article or you dont have a permission!","danger")
        return redirect(url_for("index"))

#çocuk numarasına göre çocuğu silmek için   
@app.route("/delete/child/<string:id>")
@login_required
def delete_child(id):
    cursor = mysql.connection.cursor()
    
    query = "Select * from childs where id = %s"
    
    result = cursor.execute(query,(id,))
    
    if result > 0:
        query2 = "Delete from childs where id = %s"
        
        cursor.execute(query2,(id,))
        
        mysql.connection.commit()
        
        return redirect(url_for("dashboard"))
    else:
        flash("There is no such a child or you dont have a permission!","danger")
        return redirect(url_for("index"))
    
@app.route("/delete/user/<string:id>")
@login_required
def delete_user(id):
    cursor = mysql.connection.cursor()
    
    query = "Select * from users where id = %s"
    
    result = cursor.execute(query,(id,))
    
    if result > 0:
        query2 = "Delete from users where id = %s"
        
        cursor.execute(query2,(id,))
        
        mysql.connection.commit()
        
        return redirect(url_for("dashboard"))
    else:
        flash("There is no such a user or you dont have a permission!","danger")
        return redirect(url_for("index"))
    
#makale numarasına göre makaleyi güncellemek için   
@app.route("/edit/article/<string:id>",methods = ["GET","POST"])
@login_required
def update_article(id):
    if request.method == "GET":
        cursor = mysql.connection.cursor()
        
        query = "Select * from articles where id = %s"
        result = cursor.execute(query,(id,))
        
        if result == 0:
            flash("You dont have a permission to edit this article!","danger")
            return redirect(url_for("index"))
        else:
            article = cursor.fetchone()
            form = ArticleForm()
            
            form.title.data = article["title"]
            form.content.data = article["content"]
            return render_template("updatearticle.html",form = form)
            
    else:
        #post request
        form = ArticleForm(request.form)
        
        newTitle = form.title.data
        newContent = form.content.data
        
        query2 = "Update articles Set title = %s, content = %s where id = %s"
        
        cursor = mysql.connection.cursor()
        
        cursor.execute(query2,(newTitle,newContent,id))
        
        mysql.connection.commit()
        
        flash("Article successfuly updated!","success")
        
        return redirect(url_for("dashboard"))
    
#çocuk numarasına göre çocuğun bilgilerini güncellemek için
@app.route("/edit/child/<string:id>",methods = ["GET","POST"])
@login_required
def update_child(id):
    if request.method == "GET":
        cursor = mysql.connection.cursor()
        
        query = "Select * from childs where id = %s "
        result = cursor.execute(query,(id,))
        
        if result == 0:
            flash("You dont have a permission to edit this article!","danger")
            return redirect(url_for("index"))
        else:
            child = cursor.fetchone()
            form = ChildForm()
            
            form.name.data = child["name"]
            form.age.data = child["age"]
            form.iban.data = child["iban"]
            form.about.data = child["about"]
            form.bank.data = child["bank"]
            return render_template("updatechild.html",form = form)
            
    else:
        #post request
        form = ChildForm(request.form)
        
        newName = form.name.data
        newAge = form.age.data
        newIban = form.iban.data
        newAbout = form.about.data
        newBank = form.bank.data
        
        query2 = "Update childs Set name = %s,age = %s,iban = %s,about = %s,bank = %s where id = %s"
        
        cursor = mysql.connection.cursor()
        
        cursor.execute(query2,(newName,newAge,newIban,newAbout,newBank,id))
        
        mysql.connection.commit()
        
        flash("Children successfuly updated!","success")
        
        return redirect(url_for("dashboard"))
    
#Donation sayfası için no ya göre
@app.route("/donate/<string:id>", methods=["GET", "POST"])
def donate(id):
    form = DonationForm(request.form)

    cursor = mysql.connection.cursor()
    query = "SELECT * FROM childs WHERE id = %s"

    result = cursor.execute(query, (id,))

    child = cursor.fetchone()

    if child:
        childID = child["id"]
        childName = child["name"]
        

        cursor2 = mysql.connection.cursor()
        query2 = "SELECT * FROM users WHERE username = %s"

        result2 = cursor2.execute(query2, (session["username"],))

        user = cursor2.fetchone()

        if user:
            userID = user["id"]
            userName = user["name"]

            if request.method == "POST" and form.validate():
                amount = form.amount.data
                cc_name = form.cc_name.data
                cc_no = form.cc_no.data
                cc_expr_date = form.cc_expr_date.data
                cc_cvv = form.cc_cvv.data
                payment_type = "Credit/Bank Card"

                cursor3 = mysql.connection.cursor()

                query3 = "INSERT INTO donations (type, amount, userID, userName, childID, childName) VALUES (%s, %s, %s, %s, %s, %s)"

                cursor3.execute(query3, (payment_type, amount, userID, userName, childID, childName))

                cursor4 = mysql.connection.cursor()
                
                query4 = "SELECT money FROM childs WHERE id = %s"
                
                result4 = cursor4.execute(query4, (childID,))
                
                childMoney = cursor4.fetchone()
                
                newChildMoney = float(childMoney["money"]) + float(amount)

                cursor5 = mysql.connection.cursor()
                
                query5 = "Update childs Set money = %s where id = %s"
                
                cursor5.execute(query5,(newChildMoney,childID))
                
                mysql.connection.commit()

                cursor3.close()
                flash("You successfully donated!", "success")

                return redirect(url_for("index"))

        else:
            flash("User not found!", "warning")
            return redirect(url_for("index"))

    else:
        flash("Child not found!", "warning")
        return redirect(url_for("index"))

    return render_template("donate.html", form=form, child=child)
        
            


#Makale için form. ELLEMEYİN!
class ArticleForm(Form):
    title = StringField("Article Title",validators = [validators.Length(min = 5, max = 100)])
    content = TextAreaField("Article Content",validators = [validators.Length(min = 10)])

#Çocuklar için form. ELLEMEYİN!  
class ChildForm(Form):
    name = StringField("Child Name",validators = [validators.Length(min = 5, max = 100)])
    age = StringField("Child Age",validators = [validators.Length(min = 1, max = 2)])
    bank = StringField("Child Bank",validators = [validators.Length(min = 5, max = 100)])
    iban = StringField("Child Iban",validators = [validators.Length(min = 5, max = 100)])
    about = TextAreaField("About Child",validators = [validators.Length(min = 10)])
    
#Çocuklar için form. ELLEMEYİN!  
class DonationForm(Form):
    amount = FloatField("Donation Amount",validators = [validators.DataRequired(message = "Please enter a amount!")])
    cc_name = StringField("Card Holder Name",validators = [validators.Length(min = 0, max = 100),validators.DataRequired(message = "Please enter a card holder name!")])
    cc_no = StringField("Card No",validators = [validators.Length(min = 0, max = 100),validators.DataRequired(message = "Please enter a credit card no!")])
    cc_expr_date = StringField("Card Expiration Date",validators = [validators.Length(min = 0, max = 100),validators.DataRequired(message = "Please enter a card expiration date!")])
    cc_cvv = StringField("Card CVV",validators = [validators.Length(min = 0, max = 100),validators.DataRequired(message = "Please enter a card cvv!")])

#SİLMEYİN!
if __name__ == "__main__":
    app.run(debug = True)
    


