from tkinter import *
def check():
    if var.get() == 1:
        master = Tk()
        message = Message(master, text="Поздравляю! Вы ответили правильно!", width = 300)
        message.pack()
        master.mainloop()
    else:
        master =  Tk()
        message = Message(master, text="К сожалению, ответ неверный.", width=300)
        message.pack()
        master.mainloop()
    
root = Tk()
root.title("Example")
lab_01 = Label(root, text="Пожтвердите или опровергните утверждение:", font=("Helvetica",14))
lab_02 = Label(root, text="Русский и белорусский языки являются родственными.")
lab_03 = Label(root, text="Поставьте галочку, если утверждение верно.")
lab_01.grid(row=0, column = 0, sticky = W)
lab_02.grid(row=1, column = 0, sticky = W)
lab_03.grid(row=3, column = 0, sticky = W)
var = IntVar()
ch_box = Checkbutton(root, text="Да/Нет", variable=var)
ch_box.grid(row=2, column=0, sticky=W)
button = Button(root, text="Проверить", command=check)
button.grid(row=4, column=0, sticky=W)
root.mainloop()