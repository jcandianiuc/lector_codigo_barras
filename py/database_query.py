'''
	Ejecucion de consultas a la bd.
'''

from database_conn import *
import time    


'''
	Esta funcion recibe:
		- La consulta (query)
		- El host en el que se encuentra la bd (host)
		- El usuario con el que se conectara a la bd (usuario)
		- La contrasena que pertenece al usuario (pwd)
		- La base de datos a la que se conectara (bd)
'''

def realiza_consulta(query,host,usuario,pwd,db):
		conn = conexion_db(host,usuario,pwd,db)
		cursor = conn.cursor()
		cursor.execute(query)
		result = cursor.fetchall()
		conn.close()
		cursor.close()
		return result

def ejecuta_procedure(proc,id,comment,host,usuario,pwd,db):
		conn = conexion_db(host,usuario,pwd,db)
		cursor = conn.cursor()
		now = time.strftime('%Y-%m-%d %H:%M:%S')
		args = (id,now,comment)
		cursor.callproc(proc,args)
		conn.commit()
		conn.close()
		return cursor

