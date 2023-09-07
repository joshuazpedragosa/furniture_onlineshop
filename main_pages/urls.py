from django.urls import path
from main_pages import views

urlpatterns = [
     path('', views.index),
    path('signin', views.signin),
    path('create_account', views.signup_form),
    path('insert_user', views.insert_user),
    path('login', views.login_acc)
]
