from flask import *

app = Flask(__name__) # create the application instance :)
app.config.from_object(__name__) # load config from this file

@app.route('/')
@app.route('/home')
def home():
    return render_template('index.html')

@app.route('/stjornendur')
def stjornendur():
    return  render_template('stjorn.html')

@app.route('/verslanir')
def verslanir():
    return  render_template('vefverslanir.html')

@app.route('/login')
def login():
    return render_template('login.html')

@app.route('/blog')
def blog():
    return render_template('blog.html')

@app.route('/nyskraning')
def new():
    return render_template('nyskraning.html')

@app.route('/logon', methods=['POST'])
def logon():
    email = request.form['email']
    passw = request.form['password']

    print(email)
    print(passw)



@app.route('/new-user')
def newuser():

    conn = MySQLdb.connect("tsuts.tskoli.is", "2801002260", "mypassword", "2801002260_Lokaverkefni_VEF")
    db = conn.cursor()

    commant = "INSERT INTO Notandi (USER_ID, USER_NAME, USER_PASS, USER_ADMIN) VALUES (1, '2341234', '1234', TRUE)"

    try:
        db.execute(commant)
        conn.commit()

    except:
        conn.rollback()

    conn.close()


app.run(debug = True)