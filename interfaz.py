from tkinter import *
from py.eventos import *

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

entrada_nombre=StringVar()
entrada_appat=StringVar()
entrada_apmat=StringVar()
entrada_matricula=StringVar()
entrada_tipousuario=StringVar()
entrada_correo=StringVar()
entrada_contacto=StringVar()

txtnombre= Entry(window, textvariable=entrada_nombre).place(x=170,y=106)
txtappat= Entry(window, textvariable=entrada_appat).place(x=170,y=136)
txtapmat= Entry(window, textvariable=entrada_apmat).place(x=170,y=171)
txtmatricula= Entry(window, textvariable=entrada_matricula).place(x=170,y=67)
txt_tipousuario= Entry(window, textvariable=entrada_tipousuario).place(x=170,y=211)
txtcorreo= Entry(window, textvariable=entrada_correo).place(x=170,y=252)
txtcontacto= Entry(window, textvariable=entrada_contacto).place(x=170,y=296)

entrada_matricula.trace("w", lambda name, index, mode, sv=entrada_matricula: Busca_Usuario(entrada_matricula.get()))

window.mainloop()
