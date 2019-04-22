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
	CorreoLabel=Label(text="Correo:", font=("Arial",14)).place(x=10, y=246)
	ContactoLabel=Label(text="Contacto:", font=("Arial",14)).place(x=10, y=290)

	entradas = []
	'''
	entrada_nombre=StringVar()
	entrada_appat=StringVar()
	entrada_apmat=StringVar()
	entrada_matricula=StringVar()
	entrada_tipousuario=StringVar()
	entrada_correo=StringVar()
	entrada_contacto=StringVar()
	'''
	for i in range(7):
		entradas.append(StringVar())


	txtnombre= Entry(window, textvariable=entradas[0]).place(x=170,y=106)
	txtappat= Entry(window, textvariable=entradas[1]).place(x=170,y=136)
	txtapmat= Entry(window, textvariable=entradas[2]).place(x=170,y=171)
	txtmatricula= Entry(window, textvariable=entradas[3]).place(x=170,y=67)
	txt_tipousuario= Entry(window, textvariable=entradas[4]).place(x=170,y=211)
	txtcorreo= Entry(window, textvariable=entradas[5]).place(x=170,y=252)
	txtcontacto= Entry(window, textvariable=entradas[6]).place(x=170,y=296)

	entradas[3].trace("w", lambda name, index, mode, sv=entradas[3]: Busca_Usuario(entradas[3].get(),entradas))

	window.mainloop()
