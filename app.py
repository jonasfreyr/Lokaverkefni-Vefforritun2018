from flask import *
import MySQLdb, os

app = Flask(__name__) # create the application instance :)
app.config.from_object(__name__) # load config from this file

@app.route('/')
def home():
    return render_template('index.html')

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