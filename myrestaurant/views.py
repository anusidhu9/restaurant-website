from django.shortcuts import render,HttpResponse,redirect
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from myrestaurant.models import Signup
from myrestaurant.models import AddDishes
from myrestaurant.models import Bag
from myrestaurant.models import Order
from myrestaurant.models import Contactus
from django.core.mail import send_mail

# Create your views here.
def index(request):
    d=AddDishes.objects.all()
    return render(request,"index.html",{"data":d})



def home(request):
    d=AddDishes.objects.all()
    if request.user.is_authenticated:
        username = request.user.username
        dd = Bag.objects.filter(username=username)
        context = {"data":d,"length":len(dd)}
        return render(request,'home.html',context)
    else:
        return redirect("/")    

def signup(request):
    return render(request,'signup.html')

def submit(request):
    if request.method=="POST":
        username=request.POST['username']
        firstname=request.POST['firstname']
        lastname=request.POST['lastname']
        email=request.POST['email']
        password=request.POST['password']
        confirm_password=request.POST['confirm_password']

        b=User.objects.filter(username=username)
        if b:
            msg="user already exist"
            return render(request,'signup.html',{"msg":msg})
        else:
            if password == confirm_password:
                a=User.objects.create_user(username=username,first_name = firstname,last_name=lastname,email=email,password=password)
                a.save()
                msg="account created"
                return render(request,'signup.html',{"msg":msg})
            else:
                msg = "password not matched"
                return render(request,"signup.html",{"msg":msg})
    else:
        return render(request,'signup.html')

def adminlogin(request):
    return render(request,"login.html")

def log(request):
    if request.method=="POST":
        username=request.POST["username"]
        password=request.POST["password"]
        user  = authenticate(username  = username, password = password)
        if user is not None:
            login(request,user)
            return redirect("/home")
        else:
            msg = "user not found"
            return render(request,"login.html",{"msg":msg})    
    else:
         return render(request,"login.html")  


def log_view(request):
    logout(request)
    return redirect("/home")

arr=["anu34"]
def adminlogin(request):
    if request.method=="POST":
        adminid=request.POST["adminid"]

        
        if adminid in arr:
            return redirect("/admindashboard")
        else:
            msg="admin not found"
            return render(request,"adminlogin.html",{"msg":msg})

    else:
        return render(request,"adminlogin.html")


def dashboard(request):
    return render(request,"admindashboard.html")

def adddishes(request):
    if request.method=="POST":
        dish_name=request.POST["dish_name"]
        dish_category=request.POST["dish_category"]
        dish_description=request.POST["dish_description"]
        offer_price=request.POST["offer_price"]
        actual_price=request.POST["actual_price"]
        image=request.FILES["image"]
       
        c=AddDishes(dish_name=dish_name,dish_category=dish_category,dish_description=dish_description,offer_price=offer_price,actual_price=actual_price,image=image)
        c.save()

        msg="dish uploaded"
        return render(request,"adddishes.html",{"msg":msg})

    else:
        return render(request,"adddishes.html")

def managedishes(request):
    d=AddDishes.objects.all()
    return render(request,'managedishes.html',{"data":d})

def dele(request,data):
    e=AddDishes.objects.get(id=data)
    e.delete()
    return redirect('/managedishes')

def editt(request,data):
    e=AddDishes.objects.get(id=data)
    return render(request,'editdishes.html',{"data":e})

def upd(request,data):
    e=AddDishes.objects.get(id=data)
    if request.method=="POST":
        e.dish_name=request.POST['dish_name']
        e.dish_category=request.POST['dish_category']
        e.dish_description=request.POST['dish_description']
        e.offer_price=request.POST['offer_price']
        e.actual_price=request.POST['actual_price']
        e.image=request.FILES['image']
       
        e.save()
        return redirect('/managedishes')

def viewdishes(request):
    d=AddDishes.objects.all()
    return render(request,'viewdishes.html',{"data":d})

def cart(request,id):
    if request.user.is_authenticated:
        username = request.user.username

        if request.method=="POST":
            quantity=request.POST["quantity"]

            data = AddDishes.objects.get(id = id)
            total = int(data.offer_price) * int(quantity)

            anu=Bag(dish_id=id,dish_name=data.dish_name,dish_price=data.offer_price,quantity=quantity,total_pr=total,username=username)
            anu.save()
            return redirect("/bag")
    else:
        return redirect("/home")    

def bag(request):
    n=Bag.objects.all()
    total = 0
    for i in n:
        total  = int(total) + int(i.total_pr)
       
    if request.user.is_authenticated:
        username = request.user.username
        data = Bag.objects.filter(username=username)
        context={"data":data,"total":total}
        return render(request,"bag.html",context)        
    else:
        return redirect("/home")    

def delee(request,data):
    m=Bag.objects.get(id=data)
    m.delete()
    return redirect("/bag")

dish = []
def order(request):
    if request.user.is_authenticated:
            username = request.user.username
            data = Bag.objects.filter(username=username)
            total = 0
            for i in data:
                dish.append(i.dish_name)
                total  = int(total) + int(i.total_pr)

            if request.method=="POST":
                firstname=request.POST['firstname']
                lastname=request.POST['lastname']
                email=request.POST['email']
                contact=request.POST['contact']
                address=request.POST['address']
                payment=request.POST['payment']
                card_number=request.POST['card_number']
                cvv=request.POST['cvv']
                expiry_date=request.POST['expiry_date']
                
                dishorder = list(dict.fromkeys(dish))
                y=Order(firstname=firstname,lastname=lastname,email=email,contact=contact,address=address,total_dishes=dishorder,total_pr=total,payment=payment,card_number=card_number,cvv=cvv,expiry_date=expiry_date,status="accepted")
                y.save()
                dish.clear()
                Bag.objects.filter(username=username).delete()
                
                msg="ordered successfully"
                context={"total":total,"msg":msg}
                
                return render(request,"order.html",context)
            else:
                context={"total":total,"dish":data}
                return render(request,"order.html",context)

def dashboard(request):
    data1=AddDishes.objects.all()
    data2=Order.objects.all()

    total = 0
    for i in data2:
        total  = int(total) + int(i.total_pr)

    context={"data1":len(data1),"data2":len(data2),"total":total,"data":data2}
    
    return render(request,"admindashboard.html",context)

          

def contactus(request):
    if request.method=="POST":
        username=request.POST["username"]
        email=request.POST["email"]
        message=request.POST["message"]
       
        subject="Greetings from Food villa!"
        msg="Thanks for your feedback"
        to=email
        req=send_mail(subject,msg,"anusidhu403@gmail.com",[to])
        o=Contactus(username=username,email=email,message=message)
        o.save()
        msg="message sent"
        return render(request,"contactus.html",{"msg":msg})

    else:
        return render(request,'contactus.html')

def aboutus(request):
    return render(request,"aboutus.html")

def creditcard(request):
    return render(request,"creditcard.html")        
        
def vieworders(request):
    s=Order.objects.all()
    return render(request,"vieworders.html",{"data":s})

def viewcustomers(request):
    data=User.objects.all()
    return render(request,"viewcustomers.html",{"data":data})

def status(request,id):
    data = Order.objects.get(id=id)
    if request.method == "POST":
        data.status = request.POST["status"]
        data.save()
        return redirect("/vieworders")
    else:    
        return render(request,"vieworders.html")

def trackorders(request):
        data= Order.objects.all()
        return render(request,"trackorders.html",{"data":data})

def mail(reuqest):
    subject="Greetings from Food villa!"
    msg="Thanks for your feedback"
    to="divyanshu6939@gmail.com"
    req=send_mail(subject,msg,"anusidhu403@gmail.com",[to])
    if req:
        return HttpResponse("sent")

    else:
        return HttpResponse("not sent")
