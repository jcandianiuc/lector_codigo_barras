import Tkinter
import tkMessageBox
from database_query import *
from config import *
import re


def Busca_Usuario(id,texts,comment="Estudiante"):
	if len(id)<1:
		for i in texts:
			i.set('')
		return


	if( not re.search("[0-9]",id) ):
		tkMessageBox.showerror("Error","No es un id Valido")
		return 

	try:
		proc = "registro"

		cursor = ejecuta_procedure(proc,id,comment,host,user,pwd,db)

		for result in cursor.stored_results():
				res = result.fetchall()
				if len(res) > 0:
					for i in res:
						texts[0].set(i[0])
						texts[1].set(i[1])
						texts[2].set(i[2])
						texts[3].set(i[3])
				else:
					for i in texts:
						i.set('')


	except mysql.connector.Error as err:
		tkMessageBox.showerror("Error","Usuario no encontrado")

