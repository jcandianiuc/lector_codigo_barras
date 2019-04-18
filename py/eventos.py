from database_query import *

def Busca_Usuario(id):
	try:
		#Cambiar query para la base de datos
		query = "SELECT * FROM cuotas WHERE id_cuota='" + id + "';"
		#Cambiar las variables host,user,pwd y db por los valores en la bd
		res = realiza_consulta(query,host,user,pwd,db)
	except mysql.connector.Error as err:
		print("Error: ",err)
	else:
		#Agregar impresion en la interfraz
		for i in res:
			print i