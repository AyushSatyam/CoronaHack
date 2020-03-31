from django.db import models
from django.contrib.auth.models import User,AbstractUser

USER_TYPE=(
    ('D','Dealer'),
    ('B','Buyer'),
)
GENDER_CHOICES=(
    ('M','Male'),
    ('F','Female'),
)

class ProfileUser(models.Model):
    user=models.OneToOneField(User,on_delete=models.CASCADE)
    first_name=models.CharField(max_length=254)
    first_name=models.CharField(max_length=254)
    phone_number=models.CharField(max_length=12)
    gender=models.CharField(max_length=1,choices=GENDER_CHOICES)
    profile_pic=models.ImageField()

    def __str__(self):
        return self.user.username

class Category(models.Model):
    category_name=models.CharField(max_length=100)
    image=models.ImageField()

    def __str__(self):
        return self.category_name

class Store(models.Model):
    username=models.CharField(max_length=254,blank=False,null=False,unique=True)
    store_name=models.CharField(max_length=100)
    owner_name=models.CharField(max_length=100)
    store_description=models.CharField(max_length=254)
    phone_number=models.CharField(max_length=12)
    image=models.ImageField()
    street_address=models.CharField(max_length=100)
    appartment_address=models.CharField(max_length=100)
    zip=models.CharField(max_length=100)

    def __str__(self):
        return self.store_name

class Product(models.Model):
    title=models.CharField(max_length=100)
    store=models.ForeignKey(Store,on_delete=models.DO_NOTHING)
    category=models.ForeignKey(Category,on_delete=models.CASCADE)
    price=models.FloatField()
    discount_price=models.FloatField(blank=True,null=True)
    description=models.TextField()
    image=models.ImageField()

    def __str__(self):
        return self.title

class Volunteer(models.Model):
    username=models.CharField(max_length=254,blank=False,null=False,unique=True)
    name=models.CharField(max_length=100)
    phone_number=models.CharField(max_length=12)
    image=models.ImageField()
    description=models.CharField(max_length=254)
    street_address=models.CharField(max_length=100)
    appartment_address=models.CharField(max_length=100)
    zip=models.CharField(max_length=100)

    def __str__(self):
        return self.title


class Order(models.Model):
    user=models.ForeignKey(ProfileUser,on_delete=models.DO_NOTHING)
    volunteer=models.ForeignKey(Volunteer,on_delete=models.DO_NOTHING)
    product=models.ForeignKey(Product,on_delete=models.DO_NOTHING)
    street_address=models.CharField(max_length=100)
    appartment_address=models.CharField(max_length=100)
    zip=models.CharField(max_length=100)
    isDelivered=models.BooleanField()

    def __str__(self):
        return user.username

    def isDelivered(self):
        return self.isDelivered
