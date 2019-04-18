'''
	Conexion a la base de datos

'''
import mysql.connector


'''
	Esta funcion recibe:
		- El host en el que se encuentra la bd (host)
		- El usuario con el que se conectara a la bd (usuario)
		- La contrasena que pertenece al usuario (pwd)
		- La base de datos a la que se conectara (bd)
'''

def conexion_db(host,usuario,pwd,db):
	conn = mysql.connector.connect(
  			host=host,
  			user=usuario,
  			passwd=pwd,
  			database=db
		)
	return conn