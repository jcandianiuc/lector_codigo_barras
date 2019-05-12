from tkinter import *

class Visitante(Frame):
	def Crea_Interfaz(self):
		self.master.geometry("700x400+100+100")
		self.master.title("Ejemplo")
		self.TitleLabel=Label(text="Datos Visitante", font=("Arial",14)).place(x=290, y=5)
		self.MatriculaLabel=Label(text="Nombre:", font=("Arial",14)).place(x=10, y=60)
		self.NombreLabel=Label(text="Apellido Paterno:", font=("Arial",14)).place(x=10, y=100)
		self.APLabel=Label(text="Apellido Materno:", font=("Arial",14)).place(x=10, y=135)
		self.AMLabel=Label(text="Tipo Usuario:", font=("Arial",14)).place(x=10, y=170)
		self.TipoLabel=Label(text="Correo:", font=("Arial",14)).place(x=10, y=205) #Ese dato esta de mas, al ser un visitante siempre sera del tipo visitante
		self.AreaLabel=Label(text="Area que visita:", font=("Arial",14)).place(x=10, y=246)

		self.entrada_nombre=StringVar()
		self.entrada_appat=StringVar()
		self.entrada_apmat=StringVar()
		self.entrada_tipousuario=StringVar()
		self.entrada_correo=StringVar()
		self.entrada_area=StringVar()

		txtnombre= Entry(self.master, textvariable=self.entrada_nombre).place(x=170,y=106)
		txtappat= Entry(self.master, textvariable=self.entrada_appat).place(x=170,y=136)
		txtapmat= Entry(self.master, textvariable=self.entrada_apmat).place(x=170,y=171)
		txt_tipousuario= Entry(self.master, textvariable=self.entrada_tipousuario).place(x=170,y=67)
		txtcorreo= Entry(self.master, textvariable=self.entrada_correo).place(x=170,y=211)
		txtareavisita= Entry(self.master, textvariable=self.entrada_area).place(x=170,y=252)

	def __init__(self,master=None):
		Frame.__init__(self,master)
		self.pack()
		self.Crea_Interfaz()


root = Tk()
app = Visitante(master=root)
app.mainloop()