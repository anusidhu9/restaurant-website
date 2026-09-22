from django.db import models

# Create your models here.


class Signup(models.Model):
    username=models.CharField(max_length=100)
    firstname=models.CharField(max_length=100)
    lastname=models.CharField(max_length=100)
    email=models.EmailField()
    password=models.CharField(max_length=15)
    confirm_password=models.CharField(max_length=15)

    class Meta:
        db_table='signup'
        

class AddDishes(models.Model):
    dish_name=models.CharField(max_length=100)
    dish_category=models.CharField(max_length=100)
    dish_description=models.CharField(max_length=500)
    offer_price=models.CharField(max_length=15)
    actual_price=models.CharField(max_length=15)
    image=models.ImageField(upload_to="images")

    class Meta:
        db_table="adddishes"


class Bag(models.Model):
    dish_id=models.CharField(max_length=15)
    dish_name=models.CharField(max_length=100)
    dish_price=models.CharField(max_length=15)
    quantity=models.CharField(max_length=15)
    total_pr=models.CharField(max_length=15)
    username=models.CharField(max_length=100)

    class Meta:
        db_table="bag"


class Order(models.Model):
    firstname=models.CharField(max_length=100)
    lastname=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    contact=models.CharField(max_length=15)
    address=models.CharField(max_length=500)
    total_dishes=models.CharField(max_length=100)
    total_pr=models.CharField(max_length=15)
    payment=models.CharField(max_length=15)
    card_number=models.CharField(max_length=100)
    cvv=models.CharField(max_length=15)
    expiry_date=models.CharField(max_length=15)
    status = models.CharField(max_length=100)
    class Meta:
        db_table="order"

    
class Contactus(models.Model):
    username=models.CharField(max_length=100)
    email=models.EmailField()
    message=models.CharField(max_length=500)

    class Meta:
        db_table="contactus"