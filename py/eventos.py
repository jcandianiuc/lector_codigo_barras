import Tkinter
import tkMessageBox
from database_query import *
from config import *

def Busca_Usuario(id,texts):
	if len(id)<1:
		return

	try:
		#Cambiar query para la base de datos
		query = "SELECT u.nombre,u.apellido_paterno,u.apellido_materno,t.tipoUsuario FROM usuario AS u, tipousuario AS t WHERE id_usuario="+ id + "  AND t.id_tipoUsuario = u.tipo_usuario ;"
		#Cambiar las variables host,user,pwd y db por los valores en la bd
		res = realiza_consulta(query,host,user,pwd,db)
	except mysql.connector.Error as err:
		tkMessageBox.showerror("Erro",err)
	else:
		#Agregar cambio de labels en la interfraz
		for i in res:
			texts[0].set(i[0])
			texts[1].set(i[1])
			texts[2].set(i[2])
			texts[4].set(i[3])

