from django.urls import path
from account import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.account_index),
    path('Shop', views.shop),
    path('create_shop', views.createShop),
    path('insert_product', views.insertProduct),
    path('costumer_orders', views.cos_orders),
    path('logout', views.logout)
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)