from django.db import models

class signup(models.Model):
    fullname = models.CharField(max_length=225)
    email = models.CharField(max_length=225)
    password = models.CharField(max_length=225)
    
    class Meta:
        db_table = 'tbl_signup'