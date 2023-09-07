from django.shortcuts import render, redirect
from orders.models import Cart, Orders
from account.models import addProduct

# Create your views here.
def addcart(request):
    prod_id = request.POST['prod_id']
    product = addProduct.objects.filter(id = prod_id).values()
    for products in product:
        category =  products['categories']
        price =  products['price']
        prod_img = products['img']
        
    mycart = Cart()
    mycart.cart_owner = request.session['id']
    mycart.cart_quantity = request.POST.get('cart_qntty')
    mycart.cart_prodId = request.POST.get('prod_id')
    mycart.cart_price = price
    mycart.cart_category = category
    mycart.cart_image = prod_img
    
    mycart.save()
    
    return redirect('/dashboard_acc')

def displayCart(request):
    myid = request.session['id']
    rcart = Cart.objects.filter(cart_owner = myid).values()
    return render(request, 'cart.html',{'rcart':rcart})

def displayOrders(request):
    myname = request.session['fullname']
    myorders = Orders.objects.filter(order_name = myname).values()
    return render(request, 'orders.html',{'myorders':myorders})

def addorders(request):
    prod_id = request.POST['product_id']
    stock = request.POST.get('prod_qntty')
    forsale = addProduct.objects.filter(id = prod_id).values()
    
    for sales in forsale:
        id = sales['id']
        img = sales['img']
        categories = sales['categories']
        prod_price = sales['price']
        quantity = sales['quantity']
        p_owner = sales['product_owner']
        
    update = addProduct.objects.get(id = id)
    total = quantity - int(stock)
    sum
    update.quantity = total
    update.save()
        
    myorder = Orders()
    myorder.order_name = request.session['fullname']
    myorder.order_product = categories
    myorder.order_price = prod_price
    myorder.order_img = img
    myorder.order_phone = request.POST.get('phone_num')
    myorder.order_address = request.POST.get('address')
    myorder.order_quantity = stock
    myorder.order_prodowner = p_owner
    
    myorder.save()
    return redirect('/dashboard_acc')

def delete_cart(request):
    cart_id = request.POST['id']
    cart = Cart.objects.get(id=cart_id)
    cart.delete()
    
    return redirect('cart')