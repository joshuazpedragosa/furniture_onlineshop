from django.db import models

# Create your models here.
class Cart(models.Model):
    cart_owner = models.IntegerField()
    cart_quantity = models.IntegerField()
    cart_prodId = models.IntegerField()
    cart_price = models.CharField(max_length=225)
    cart_category = models.CharField(max_length=225)
    cart_image = models.CharField(max_length=225)
    
    class Meta:
        db_table = 'tbl_cart'
        
class Orders(models.Model):
    order_name = models.CharField(max_length=225)
    order_product = models.CharField(max_length=225)
    order_price = models.IntegerField()
    order_img = models.CharField(max_length=225)
    order_phone = models.IntegerField()
    order_prodowner = models.IntegerField(null=True)
    order_address = models.CharField(max_length=225)
    order_quantity = models.IntegerField()
    
    class Meta:
        db_table = 'tbl_order'