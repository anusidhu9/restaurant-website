"""
URL configuration for restaurant project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from myrestaurant import views
from django.urls.conf import include
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.index),
    path('home',views.home),
    path('signup',views.signup),
    path('submit',views.submit),
    path('login',views.log),
    path('logout',views.log_view),
    path('adminlogin',views.adminlogin),
    path('admindashboard',views.dashboard),
    path('adddishes',views.adddishes),
    path('managedishes',views.managedishes),
    path('delete/<int:data>',views.dele),
    path('edit/<int:data>',views.editt),
    path('edit/update/<int:data>',views.upd),
    path('viewdishes',views.viewdishes),
    path('bag',views.bag),
    path('cart/<int:id>',views.cart),
    path('delee/<int:data>',views.delee),
    path('order',views.order),
    path('vieworders',views.vieworders),
    path('admindashboard',views.dashboard),
    path('viewcustomers',views.viewcustomers),
    path('contactus',views.contactus),
    path('aboutus',views.aboutus),
    path('mail',views.mail),
    path('status/<int:id>',views.status),
    path('trackorders',views.trackorders)

]


if settings.DEBUG:urlpatterns +=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)


