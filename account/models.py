from django.db import models

# Create your models here.
class Createshop(models.Model):
    shop_name = models.CharField(max_length=225)
    shop_email = models.CharField(max_length=225)
    shop_owner = models.CharField(max_length=225)
    
    class Meta:
        db_table = 'tbl_shop'
    
class addProduct(models.Model):
    img = models.ImageField(upload_to='image_uploads')
    quantity = models.IntegerField()
    categories = models.CharField(max_length=225)
    description = models.CharField(max_length=225)
    price = models.IntegerField()
    product_owner = models.IntegerField()
    
    class Meta:
        db_table = 'tbl_products'