from tkinter import *
from py.eventos import *

def Interfaz():

	window=Tk()
	window.geometry("700x400+100+100")
	window.title("Ejemplo")

	TitleLabel=Label(text="Datos Usuario", font=("Arial",14)).place(x=290, y=5)
	MatriculaLabel=Label(text="Matricula:", font=("Arial",14)).place(x=10, y=60)
	NombreLabel=Label(text="Nombre:", font=("Arial",14)).place(x=10, y=100)
	APLabel=Label(text="Apellido Paterno:", font=("Arial",14)).place(x=10, y=135)
	AMLabel=Label(text="Apellido Materno:", font=("Arial",14)).place(x=10, y=170)
	TipoLabel=Label(text="Tipo Usuario:", font=("Arial",14)).place(x=10, y=205)
	
	'''
	entrada_nombre=StringVar()
	entrada_appat=StringVar()
	entrada_apmat=StringVar()
	entrada_matricula=StringVar()
	entrada_tipousuario=StringVar()
	'''
	entradas = []
	for i in range(5):
		entradas.append(StringVar())

	txtmatricula= Entry(window, textvariable=entradas[0]).place(x=170,y=67)
	txtnombre= Entry(window, textvariable=entradas[1], state='disabled').place(x=170,y=106)
	txtappat= Entry(window, textvariable=entradas[2], state='disabled').place(x=170,y=136)
	txtapmat= Entry(window, textvariable=entradas[3], state='disabled').place(x=170,y=171)
	txt_tipousuario= Entry(window, textvariable=entradas[4], state='disabled').place(x=170,y=211)


	entradas[0].trace("w", lambda name, index, mode, sv=entradas[0]: Busca_Usuario(entradas[0].get(),entradas[1:]))

	window.mainloop()
