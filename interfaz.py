from tkinter import *
from py.eventos import *

class Interfraz(Frame):

	def Hide(self):
		self.master.withdraw()

	def Abre_Visitante(self):
		self.Hide()
		self.visit = Toplevel()
		self.visit.geometry("400x300")
		self.visit.title("Visitante")
		handler = lambda: self.onCloseOtherFrame(self.visit)
		btn = Button(self.visit, text="Close", command=handler)
		btn.pack()

	def onCloseOtherFrame(self, otherFrame):
		otherFrame.destroy()
		self.show()

	def show(self):
		self.master.update()
		self.master.deiconify()

	def Crea_Interfaz(self):
		
		self.master.geometry("700x400+100+100")
		self.master.title("Ejemplo")

		self.TitleLabel=Label(text="Datos Usuario", font=("Arial",14)).place(x=290, y=5)
		self.MatriculaLabel=Label(text="Matricula:", font=("Arial",14)).place(x=10, y=60)
		self.NombreLabel=Label(text="Nombre:", font=("Arial",14)).place(x=10, y=100)
		self.APLabel=Label(text="Apellido Paterno:", font=("Arial",14)).place(x=10, y=135)
		self.AMLabel=Label(text="Apellido Materno:", font=("Arial",14)).place(x=10, y=170)
		self.TipoLabel=Label(text="Tipo Usuario:", font=("Arial",14)).place(x=10, y=205)
		self.entradas = []
		
		for i in range(5):
			self.entradas.append(StringVar())
		
		self.txtmatricula= Entry(self.master, textvariable=self.entradas[0]).place(x=170,y=67)
		self.txtnombre= Entry(self.master, textvariable=self.entradas[1], state='disabled').place(x=170,y=106)
		self.txtappat= Entry(self.master, textvariable=self.entradas[2], state='disabled').place(x=170,y=136)
		self.txtapmat= Entry(self.master, textvariable=self.entradas[3], state='disabled').place(x=170,y=171)
		self.txt_tipousuario= Entry(self.master, textvariable=self.entradas[4], state='disabled').place(x=170,y=211)
		self.entradas[0].trace("w", lambda name, index, mode, sv=self.entradas[0]: Busca_Usuario(self.entradas[0].get(),self.entradas[1:]))

		self.btn = Button( self,text="Close", command=self.Abre_Visitante())
		self.btn.pack()

	def __init__(self,master=None):
		Frame.__init__(self,master)
		self.pack()
		self.Crea_Interfaz()


