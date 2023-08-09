from flask import Flask, request, jsonify
from flask_cors import CORS
import mysql.connector, os
from dotenv import load_dotenv

load_dotenv()
host = os.getenv('host')
user = os.getenv('user')
password = os.getenv('password')
database = os.getenv('database')

config = {
    'user': user,
    'password': password,
    'host': host,
    'database': database,
    'raise_on_warnings': True,
}
config_2 = {
    'user': user,
    'password': password,
    'host': host,
    'database': "hotel",
    'raise_on_warnings': True,
}

mydb = mysql.connector.connect(**config)

mydb_2 = mysql.connector.connect(**config_2)

mycursor=mydb.cursor()
mycursor_2=mydb_2.cursor()

app = Flask(__name__)

CORS(app)

@app.route('/pago',methods=['GET', 'POST'])
def hacerPago():
    try:
        cuenta = request.json['cuenta']
        clave = request.json['clave']
        mycursor.execute("SELECT Id FROM Clientes WHERE cuenta \
                          = '" + cuenta + "' AND clave = '" + clave +"';")
        myresult = mycursor.fetchone()
        if myresult == None or myresult == "":
            return jsonify(str("Cuenta no registrada"))
        else:
            return jsonify(myresult)
    except NameError as msg:
        return jsonify(str(msg))
    else:
        return jsonify(str("Sin conexión"))

@app.route('/verificarCredenciales')
def verificarCredenciales():
    try:
        mail = "correo1@correo"
        password = "11111111"
        mycursor_2.execute("SELECT Id FROM TR_DatosHuespedes WHERE Correo = '" + mail + "' and Contraseña = '" + password + "';")
        resultado = mycursor_2.fetchone()
        print(resultado)
        return jsonify(resultado)
    except NameError as error:
        return jsonify(error)

if __name__ == "__main__":
    app.run(debug=True)