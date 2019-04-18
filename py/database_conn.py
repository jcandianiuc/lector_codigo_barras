'''
	Conexion a la base de datos

'''
import mysql.connector

def conexion_db(host,usuario,pas):
	
	try:
		conn = mysql.connector.connect(
  			host=host,
  			user=usuario,
  			passwd=pas
		)
	except mysql.connector.Error as err:
		print("Error al conectarse a la base de datos:",err)
		return None
	else:
		print "Conexion exitosa"
		return conn
