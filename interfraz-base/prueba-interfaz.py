from tkinter import *
window=Tk()
window.geometry("700x400+100+100")
window.title("Ejemplo")
labeluser=Label(text="Datos Usuario", font=("Arial",14)).place(x=290, y=5)
labeluser=Label(text="nombre:", font=("Arial",14)).place(x=10, y=60)
labeluser=Label(text="apellido paterno:", font=("Arial",14)).place(x=10, y=100)
labeluser=Label(text="apellido materno:", font=("Arial",14)).place(x=10, y=135)
labeluser=Label(text="matricula:", font=("Arial",14)).place(x=10, y=170)
labeluser=Label(text="tipo usuario:", font=("Arial",14)).place(x=10, y=205)
labeluser=Label(text="correo:", font=("Arial",14)).place(x=10, y=246)
labeluser=Label(text="contacto:", font=("Arial",14)).place(x=10, y=290)
entrada_nombre=StringVar()
entrada_appat=StringVar()
entrada_apmat=StringVar()
entrada_matricula=StringVar()
entrada_tipousuario=StringVar()
entrada_correo=StringVar()
entrada_contacto=StringVar()
txtnombre=Entry(window, textvariable=entrada_nombre).place(x=170,y=66)
txtappat=Entry(window, textvariable=entrada_appat).place(x=170,y=106)
txtapmat=Entry(window, textvariable=entrada_apmat).place(x=170,y=141)
txtmatricula=Entry(window, textvariable=entrada_matricula).place(x=170,y=177)
txt_tipousuario=Entry(window, textvariable=entrada_tipousuario).place(x=170,y=211)
txtcorreo=Entry(window, textvariable=entrada_correo).place(x=170,y=252)
txtcontacto=Entry(window, textvariable=entrada_contacto).place(x=170,y=296)
window.mainloop()
