from django.shortcuts import render, redirect
from account.models import Createshop, addProduct
from orders.models import Orders
from django.http import HttpResponse
from django.template import loader
from django.db.models import Q

# Create your views here.
def account_index(request):
    if 'id' not in request.session:
        return redirect('/signin')
    else:
        shopid = request.session['id']
        dp = addProduct.objects.filter( ~Q(product_owner = shopid)).values()
        context = {
            'dp':dp,
            }
        return render(request, 'dashboard.html', context)
    
def cos_orders(request):
    if 'id' not in request.session:
        return redirect('/signin')
    else:
        myID = request.session['id']
        shop_acc = Createshop.objects.filter(shop_owner=myID).values()
        order = Orders.objects.filter(order_prodowner = myID)
        context = {
            'shop_acc': shop_acc,
            'order': order
            }
        return render(request, 'costumer_order.html', context)

def shop(request):
    if 'id' not in request.session:
        return redirect('/signin')
    else:
        myID = request.session['id']
        shop_acc = Createshop.objects.filter(shop_owner=myID).values()
        prod = addProduct.objects.filter(product_owner = myID).values()
        
        template = loader.get_template('myshop.html')
        context = {
            'prod': prod,
            'shop_acc': shop_acc,
            }
        return HttpResponse(template.render(context, request))
    
def createShop(request):
    ca = Createshop(
        shop_name = request.POST.get('shop_name'),
        shop_email = request.POST.get('shop_email'),
        shop_owner = request.POST.get('shop_owner')
    )
    ca.save()
    return redirect('/dashboard_acc')

def insertProduct(request):
    if request.method == 'POST':
        ip = addProduct()
        ip.img = request.FILES['img']
        ip.quantity = request.POST.get('quantity')
        ip.categories = request.POST.get('categories')
        ip.price = request.POST.get('price')
        ip.description = request.POST.get('description')
        ip.product_owner = request.POST.get('product_owner')
        ip.save()
        return redirect('/dashboard_acc')

def logout(request):
    del request.session['id']
    del request.session['fullname']
    del request.session['email']
    return redirect('/signin')