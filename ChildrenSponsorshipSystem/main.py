from flask import Flask,render_template,flash,redirect,url_for,session,logging,request
from flask_mysqldb import MySQL
from wtforms import Form,StringField,TextAreaField,PasswordField,validators,DateField
from passlib.hash import sha256_crypt
from functools import wraps

#User log-in checker
def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if "logged_in" in session:  
            return f(*args, **kwargs)
        else:
            flash("You need to log-in first","danger")
            return redirect(url_for("login"))     
    return decorated_function

#User Registration Form
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
    
class LoginForm(Form):
    username = StringField("Username")
    password = PasswordField("Password")
        
    

app = Flask(__name__)
app.secret_key = "css"

app.config["MYSQL_HOST"] = "localhost"
app.config["MYSQL_USER"] = "root"
app.config["MYSQL_PASSWORD"] = ""
app.config["MYSQL_DB"] = "css"
app.config["MYSQL_CURSORCLASS"] = "DictCursor"

mysql = MySQL(app)


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/about")
def about():
    return render_template("about.html")

@app.route("/contact")
def contact():
    return render_template("contact.html")


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
            if sha256_crypt.verify(password_entered,real_password):
                flash("You successfuly login!","success")
                
                session["logged_in"] = True
                session["username"] = username
                
                return redirect(url_for("index"))
            
            else:
                flash("Wrong password! Please try again.","danger")
        
        else:
            flash("No user found for this username!","danger")
            return redirect(url_for("login"))
        
    return render_template("login.html",form = form)
   

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
    

    
    
@app.route("/logout")
def logout():
    session.clear()
    return redirect(url_for("index"))


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
    
    if result > 0 or result2 > 0:
        return render_template("dashboard.html", articles=articles, childs=childs)
    else:
        return render_template("dashboard.html")

    
     


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


@app.route("/addchild",methods = ["GET","POST"])
def addchild():
    form = ChildForm(request.form)
    
    if request.method == "POST" and form.validate():
        name = form.name.data
        age = form.age.data
        iban = form.iban.data
        about = form.about.data
        
        cursor = mysql.connection.cursor()
        query = "Insert into childs (name,age,iban,about) VALUES(%s,%s,%s,%s)"
        
        cursor.execute(query,(name,age,iban,about))
        
        mysql.connection.commit()
        
        cursor.close()
        
        flash("Child successfully added!","success")
        
        return redirect(url_for("dashboard"))

    return render_template("addchild.html",form = form)

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
    
    
@app.route("/edit/article/<string:id>",methods = ["GET","POST"])
@login_required
def update(id):
    if request.method == "GET":
        cursor = mysql.connection.cursor()
        
        query = "Select * from articles where id = %s and author = %s"
        result = cursor.execute(query,(id,session["username"]))
        
        if result == 0:
            flash("You dont have a permission to edit this article!","danger")
            return redirect(url_for("index"))
        else:
            article = cursor.fetchone()
            form = ArticleForm()
            
            form.title.data = article["title"]
            form.content.data = article["content"]
            return render_template("update.html",form = form)
            
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
            


#article form
class ArticleForm(Form):
    title = StringField("Article Title",validators = [validators.Length(min = 5, max = 100)])
    content = TextAreaField("Article Content",validators = [validators.Length(min = 10)])
    
class ChildForm(Form):
    name = StringField("Child Name",validators = [validators.Length(min = 5, max = 100)])
    age = StringField("Child Age",validators = [validators.Length(min = 1, max = 2)])
    iban = StringField("Child Iban",validators = [validators.Length(min = 5, max = 100)])
    about = TextAreaField("About Child",validators = [validators.Length(min = 10)])

    
if __name__ == "__main__":
    app.run(debug = True)
    


