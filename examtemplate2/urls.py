"""examtemplate2 URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
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
from view import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path("demo", index),
    path("adminsignup", adminsignup),
    path("addnewadmin", addnewadmin),
    path("viewadmin", viewadmin),
    path("deleteadmin", deleteadmin),
    path("save", save),
    path("editadmin", editadmin),
    path("login", login),
    path("loginpage", loginpage),
    path("changepasswordpage", changepasswordpage),
    path("actionchangepassword", actionchangepassword),
    path("addstream", addstream),
    path("addnewstream", addnewstream),
    path("viewstream", viewstream),
    path("deletestream", deletestream),
    path("savestream", savestream),
    path("editstream", editstream),
    path("addsections", addsections),
    path("addnewsection", addnewsection),
    path("viewsection", viewsection),
    path("deletesection", deletesection),
    path("savesection", savesection),
    path("editsection", editsection),
    path("questions", questions),
    path("addquestion", addquestion),
    path("deletequestion", deletequestion),
    path("viewquestion", viewquestion),
    path("fetchquestions", fetchquestions),
    path('fetchques', fetchquestions),
    path("savequestion", savequestion),
    path("editquestion", editquestion),
    path("adminlogout", adminlogout),
    path("applicantsignup", applicantsignup),
    path("signup", signup),
    path("applicanthomepage", applicanthomepage),
    path("applicantlogin", applicantlogin),
    path("applicantslogin", applicantslogin),
    path("forgetpassuser", forgetpassuser),
    path("selectsection", selectsection),
    path("fetchquestionforexam", fetchquestionforexam),
    path("fetchnextquestion", fetchnextquestion),
    path("submitanswer", submitanswer),
    path("submittest", submittest),
    path("showww", showww),
    path("showresult", showresult),
    path("showresultdetail", showresultdetail),
    path("load", load),
    path("index", index),
    path("", index),
    path("about", about),
    path("contact", contact),
    path("features", features),
    path("gallery", gallery),
    path("readmore", readmore),
    path("userchangepassword", userchangepassword),
    path("useractionchangepassword", useractionchangepassword),
    path("userlogout", userlogout),
    path('applicantdashboard',applicantdashboard),
    path('admindashboard',admindashboard),
]
