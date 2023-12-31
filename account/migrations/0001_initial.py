# Generated by Django 4.1.4 on 2023-01-23 09:04

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='addProduct',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('img', models.ImageField(upload_to='image_uploads')),
                ('quantity', models.IntegerField()),
                ('categories', models.CharField(max_length=225)),
                ('description', models.CharField(max_length=225)),
                ('price', models.CharField(max_length=225)),
                ('product_owner', models.IntegerField()),
            ],
            options={
                'db_table': 'tbl_products',
            },
        ),
        migrations.CreateModel(
            name='Createshop',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('shop_name', models.CharField(max_length=225)),
                ('shop_email', models.CharField(max_length=225)),
                ('shop_owner', models.CharField(max_length=225)),
            ],
            options={
                'db_table': 'tbl_shop',
            },
        ),
    ]
