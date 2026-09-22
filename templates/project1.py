#Import required libraries :

from tkinter import *
import random
import tkinter.font as font
import simpleaudio as sa


want_to_play = True

while want_to_play==True:
    
    root = Tk()
    root.title("Guess The Number!")
    root.geometry('+100+0')
    root.configure(bg="#000000")
    root.resizable(width=False,height=False)
    root.iconphoto(True,PhotoImage(file="surprise.png"))
    
    
    #To play sound files:
    start = sa.WaveObject.from_wave_file("Start.wav")
    one = sa.WaveObject.from_wave_file("Win.wav")
    two = sa.WaveObject.from_wave_file("Lose.wav")
    three = sa.WaveObject.from_wave_file("Draw.wav")
    
    start.play()
    
    #Loading images :
    Check = PhotoImage(file="Check_5.png")
    High = PhotoImage(file="High_5.png")
    Low = PhotoImage(file="Low_5.png")
    Correct = PhotoImage(file="Correct_5.png")
    Surprise= PhotoImage(file ="Surprise.png")
    your_choice = PhotoImage(file="YOUR_GUESS.png")
    fingers = PhotoImage(file = "Fingers.png")
    close = PhotoImage(file="Close_5.png")
    
    #To have space between rows.
    root.grid_rowconfigure(1, minsize=30) 
    root.grid_rowconfigure(3, minsize=30) 
    root.grid_rowconfigure(5, minsize=30) 
    root.grid_rowconfigure(9, minsize=30)
    root.grid_rowconfigure(11, minsize=30) 

    #Generating random number :
    number = random.randint(1,9)
    
    #Using font module to modify the fonts :
    myFont = font.Font(family='Helvetica',weight='bold')
    
    #Creating the first label :
    label = Label(root,image=your_choice)
    label.grid(row=0,column=1)
    
    #Creating the entry box :
    e1 = Entry(root,bd=5,width=13,bg="#9ca1db",justify=CENTER,font=myFont)
    e1.grid(row=2,column=1)
    
    #Creating check button :
    b1 = Button(root,image=Check,command=lambda:show())
    b1.grid(row=4,column=3)
    
    #Creating close button :
    b2 = Button(root,image=close,command=lambda:reset())
    b2.grid(row=4,column=0)
    
    #Creaating second label :
    label2 = Label(root,image=fingers)
    label2.grid(row=6,column=1)
    
    #Creating third label :
    label3 = Label(root,image=Surprise)
    label3.grid(row=10,column=1)
    
    #Creating fourth label :
    label4= Label(root,text="ATTEMPTS : ",bd=5,width=13,bg="#34e0f2",justify=CENTER,font=myFont)
    label4.grid(row=12,column=1)
    
    #To display the correct image :
    num = PhotoImage(file=str(number)+str(".png"))    
    
    #Set the count to 0.
    #It stores the attempt value.
    count = 0
    
    def show():
        
        #Increase the count value as the user presses check button.
        global count
        count = count+1
        
        #Get the value entered by user.
        answer = e1.get()
        
        #If the entry value is null the goto reset() function.
        if answer=="":
            reset()
            
        #Convert it to int for comparision.
        answer = int(e1.get())
        
        if answer > number:
            #Play sound file.
            two.play()
            #Change the label to Too High.
            label2.configure(image=High)
            #Calls all pending idle tasks.
            root.update_idletasks()
            #Wait for 1 second.
            root.after(1000)
            #Clear the entry.
            e1.delete(0,"end")
            #Change the label to the original value.
            label2.configure(image=fingers)
        
        elif answer < number:
            #Play sound file.
            two.play()
            #Change the label to Too Low.
            label2.configure(image=Low)
            #Calls all pending idle tasks.
            root.update_idletasks()
            #Wait for 1 second.
            root.after(1000)
            #Clear the entry.
            e1.delete(0,"end")
            #Change the label to the original value.
            label2.configure(image=fingers)
          
        else:
            #Play sound file.
            one.play()
            #Show the CORRECT image.
            label2.configure(image=Correct)
            #Show the correct number.
            label3.configure(image=num)
            #Show the number of attempts.
            label4.configure(text="ATTEMPTS : "+str(count))

            
    #Define reset() function :            
    def reset():
        #Play the sound file.
        three.play()
        #Change the variable to false.
        global want_to_play
        want_to_play = False
        #Close the tkinter window.
        root.destroy()
    
    #Enter the mainloop :
    root.mainloop()