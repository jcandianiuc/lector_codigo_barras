from tkinter import *

window=Tk()
window.geometry("700x400+100+100")
window.title("Ejemplo")
TitleLabel=Label(text="Datos Visitante", font=("Arial",14)).place(x=290, y=5)
MatriculaLabel=Label(text="Nombre:", font=("Arial",14)).place(x=10, y=60)
NombreLabel=Label(text="Apellido Paterno:", font=("Arial",14)).place(x=10, y=100)
APLabel=Label(text="Apellido Materno:", font=("Arial",14)).place(x=10, y=135)
AMLabel=Label(text="Tipo Usuario:", font=("Arial",14)).place(x=10, y=170)
TipoLabel=Label(text="Correo:", font=("Arial",14)).place(x=10, y=205) #Ese dato esta de mas, al ser un visitante siempre sera del tipo visitante
AreaLabel=Label(text="Area que visita:", font=("Arial",14)).place(x=10, y=246)

entrada_nombre=StringVar()
entrada_appat=StringVar()
entrada_apmat=StringVar()
entrada_tipousuario=StringVar()
entrada_correo=StringVar()
entrada_area=StringVar()

txtnombre= Entry(window, textvariable=entrada_nombre).place(x=170,y=106)
txtappat= Entry(window, textvariable=entrada_appat).place(x=170,y=136)
txtapmat= Entry(window, textvariable=entrada_apmat).place(x=170,y=171)
txt_tipousuario= Entry(window, textvariable=entrada_tipousuario).place(x=170,y=67)
txtcorreo= Entry(window, textvariable=entrada_correo).place(x=170,y=211)
txtareavisita= Entry(window, textvariable=entrada_area).place(x=170,y=252)
window.mainloop()
