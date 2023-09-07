from django.urls import path
from orders import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('add_to_cart/', views.addcart, name="add_to_cart"),
    path('cart/', views.displayCart, name="cart"),
    path('orders/', views.displayOrders, name="orders"),
    path('add_order/', views.addorders, name="add_order"),
    path('delete_cart/', views.delete_cart, name="delete_cart")
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)