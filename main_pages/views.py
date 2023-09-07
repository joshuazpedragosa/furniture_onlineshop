from django.shortcuts import render, redirect
from main_pages.models import signup
from django.views.decorators.csrf import csrf_protect

# Create your views here.
def index(request):
    if 'id' not in request.session:
        return render(request, 'wc_page.html')
    else:
        return redirect('dashboard_acc/')

@csrf_protect
def signin(request):
    if 'id' not in request.session:    
        return render(request, 'signin.html')
    else:
        return redirect('dashboard_acc/')

def signup_form(request):
    if 'id' not in request.session:
        return render(request, 'signup.html')
    else:
         return redirect('dashboard_acc/')

def insert_user(request):
    acc = signup(
        fullname = request.POST.get('fullname'),
        email = request.POST.get('email'),
        password = request.POST.get('password')
    )
    acc.save()
    str = "Registration Successful!"
    return render(request, 'signup.html', {'msg': str})

@csrf_protect
def login_acc(request):
    email = request.POST['email']
    password = request.POST['password']
    user = signup.objects.filter(email=email, password = password).values()
    for user_data in user:
        myid = user_data['id']
        myfullname = user_data['fullname']
        myemail = user_data['email']
    if not user:
        str = "Email or password is incorrect!"
        return render(request, 'signin.html', {'msg': str})
    else:   
        request.session['id'] = myid
        request.session['fullname'] = myfullname
        request.session['email'] = myemail
        return redirect('dashboard_acc/')