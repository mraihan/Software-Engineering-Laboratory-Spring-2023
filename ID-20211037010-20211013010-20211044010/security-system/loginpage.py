from tkinter import *
class login:
    def __init__(self, root):
        self.root = root
        self.root.title("Login To Security System")
        self.root.geometry("1199x600+110+80")
        self.root.resizable(False, False)

        Frame_login = Frame(self.root, bg="white")
        Frame_login.place(x=330, y=50, width=600, height=450)

        title= Label(Frame_login, text="Login Here", font=("Impact", 35, "bold"), fg="#6162FF", bg="white").place(x=90, y=30)
        subtitle= Label(Frame_login, text="Members Login Area", font=("Goudy old style", 15, "bold"), fg="#1d1d1d", bg="white").place(x=90, y=100)

        lbl_user= Label(Frame_login, text="Username", font=("Goudy old style", 15, "bold"), fg="grey", bg="white").place(x=90, y=140)
        self.username=Entry(Frame_login, font=("Goudy old style",15), bg="#E7E6E6")
        self.username.place(x=90, y=170, width=320, heigh=35)

        lbl_password = Label(Frame_login, text="Password", font=("Goudy old style", 15, "bold"), fg="grey", bg="white").place(x=90, y=210)
        self.password = Entry(Frame_login, font=("Goudy old style", 15), bg="#E7E6E6")
        self.password.place(x=90, y=240, width=320, heigh=35)

        forget =Button(Frame_login, text="forget password?",bd=0,font=("Goudy old style", 12), fg="#6162FF", bg="white").place(x=90, y=280)
        submit =Button(Frame_login, text="Login?",bd=0,font=("Goudy old style", 15), bg="#6162FF", fg="white").place(x=90, y=320, width=180, height=40)

root = Tk()
obj = login(root)
root.mainloop()