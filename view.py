import http.client
from builtins import str
from django.shortcuts import *
from django.http import *
from pymysql import *
from django.views.decorators.csrf import *
import datetime
from django.core.files.storage import *

conn = connect("127.0.0.1", "root", "", "computerisedexam")

# from pickletools import d


def loginpage(request):
    if 'adminemail' in request.session:
        return redirect(admindashboard)
    else:
        return render(request, "login.html")

def features(request):
    return render(request,'features.html')

def login(request):
    email = request.GET["email"]
    password = request.GET["password"]
    conn = connect("127.0.0.1", "root", "", "computerisedexam")

    s = "select * from admin where email='" + email + "' and  password= '" + password + "'"
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchone()
    if result:
        request.session['adminemail'] = email
        return redirect(admindashboard)
    else:
        d = {"message": "invalid password and email"}
        return render(request, "login.html", {"ar": d})

def admindashboard(request):
    if 'adminemail' in request.session:
        return render(request, "admindashboard.html")
    else:
        return redirect(loginpage)

def adminlogout(request):
    try:
        del request.session["adminemail"]
    except:
        pass
    return redirect(loginpage)


def changepasswordpage(request):
    if 'adminemail' in request.session:
        return render(request, "changepassword.html")
    else:
        return redirect(loginpage)


def actionchangepassword(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    email = str(request.session['adminemail'])
    s = "select * from admin where email='" + email + "' and  password= '" + request.GET[
        "oldpassword"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchone()
    if result:
        s = "update admin set  password='" + request.GET["newpassword"] + "' where email='" + email + "'"
        cr = conn.cursor()
        cr.execute(s)
        conn.commit()
        d = {"message": "password change successfully"}
        return render(request, "admindashboard.html", {"ar": d})
    else:
        d = {"message": "invalid credentials"}
        return render(request, "changepassword.html", {"ar": d})


def adminsignup(request):
    return render(request, "adminsignup.html")


@csrf_exempt
def addnewadmin(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "insert into admin values( '" + request.POST["email"] + "','" + request.POST["password"] + "','" + request.POST[
        "type"] + "','" + request.POST["mobile"] + "')"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    d = {"message": "admin added "}
    return render(request, "addnewadmin.html", {"ar": d})


def viewadmin(request):
    if 'adminemail' in request.session:
        conn = connect("127.0.0.1", "root", "", "computerisedexam")
        s = "select * from admin"
        cr = conn.cursor()
        cr.execute(s)
        result = cr.fetchall()
        x = []
        for row in result:
            d = {"email": row[0], "password": row[1], "type": row[2], "mobile": row[3]}
            x.append(d)
        return render(request, "viewadmin.html", {"ar": x})
    else:
        return redirect(loginpage)


def deleteadmin(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "delete from admin where email='" + request.GET["q"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("viewadmin")


def save(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    email = request.POST['email']
    password = request.POST['password']
    type = request.POST['type']
    mobile = request.POST['mobile']
    query = f"update admin set password='{password}',type='{type}',mobile='{mobile}' where email='{email}'"
    # s = "update admin set password='" + request.GET["password"] + "' where email='" + request.GET["email"] + "'"
    # r = "update admin set type='" + request.GET["type"] + "' where email='" + request.GET["email"] + "'"
    # m = "update admin set mobile=" + request.GET["mobile"] + " where email='" + request.GET["email"] + "'"
    cr = conn.cursor()
    cr.execute(query)
    # cr.execute(r)
    # cr.execute(m)
    conn.commit()
    return HttpResponseRedirect("viewadmin")


def editadmin(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "select * from admin where email='" + request.GET["q1"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchone()
    d = {"email": result[0], "password": result[1], "type": result[2], "mobile": result[3]}
    return render(request, "editadmin.html", {"ar": d})


def addstream(request):
    if 'adminemail' in request.session:
        return render(request, "addstream.html")
    else:
        return redirect(loginpage)

def addnewstream(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "insert into streams values( NULL,'" + request.GET["streamname"] + "','" + request.GET["description"] + "','" + \
        request.GET["passper"] + "')"
    print(s)
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponse("<h1>STREAM ADDED</h1>")


def viewstream(request):
    if 'adminemail' in request.session:
        conn = connect("127.0.0.1", "root", "", "computerisedexam")
        s = "select * from streams"
        cr = conn.cursor()
        cr.execute(s)
        result = cr.fetchall()
        x = []
        for row in result:
            d = {"streamid": row[0], "streamname": row[1], "description": row[2], "passper": row[3]}
            x.append(d)
        return render(request, "viewstream.html", {"ar": x})
    else:
        return redirect(loginpage)


def deletestream(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "delete from streams where streamid='" + request.GET["q"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("viewstream")


def savestream(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    streamid = request.GET['streamid']
    streamname = request.GET['streamname']
    description = request.GET['description']
    passper = request.GET['passper']
    s = f"update streams set streamname= '{streamname}',description='{description}',passper='{passper}' where streamid='{streamid}'"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("viewstream")


def editstream(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "select * from streams where streamid='" + request.GET["q1"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchone()
    d = {"streamid": result[0], "streamname": result[1], "description": result[2], "passper": result[3]}
    return render(request, "editstream.html", {"ar": d})


def addsections(request):
    if 'adminemail' in request.session:
        return render(request, "addsections.html")
    else:
        return redirect(loginpage)


def addnewsection(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "insert into sections values(NULL,'" + request.GET["sectionname"] + "','" + request.GET["maxques"] + "','" + \
        request.GET["marks"] + "','" + request.GET["negmarks"] + "')"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponse("<h1>Section added</h1>")


def viewsection(request):
    if 'adminemail' in request.session:
        conn = connect("127.0.0.1", "root", "", "computerisedexam")
        s = "select * from sections"
        cr = conn.cursor()
        cr.execute(s)
        result = cr.fetchall()
        x = []
        for row in result:
            d = {"sectionid": row[0], "sectionname": row[1], "maxques": row[2], "marks": row[3], "negmarks": row[4]}
            x.append(d)
        return render(request, "viewsection.html", {"ar": x})
    else:
        return redirect(loginpage)


def deletesection(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "delete from sections where sectionid='" + request.GET["q"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("viewsection")


def savesection(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    sectionname = request.GET['sectionname']
    maxques = request.GET['maxques']
    marks = request.GET['marks']
    negmarks = request.GET['negmarks']
    sectionid = request.GET['sectionid']
    s = f"update sections set sectionname='{sectionname}', maxques='{maxques}', marks='{marks}', negmarks='{negmarks}' where sectionid='{sectionid}'"

    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("viewsection")


def editsection(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "select * from sections where sectionid=" + request.GET["q1"] + ""
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchone()
    d = {"sectionid": result[0], "sectionname": result[1], "maxques": result[2], "marks": result[3],
         "negmarks": result[4]}
    return render(request, "editsection.html", {"ar": d})


def questions(request):
    if 'adminemail' in request.session:
        conn = connect("127.0.0.1", "root", "", "computerisedexam")
        query = "select * from sections"
        cr = conn.cursor()
        cr.execute(query)
        result = cr.fetchall()
        x = []
        for row in result:
            d = {}
            d["sectionname"] = row[1]
            d["sectionid"] = row[0]
            x.append(d)
        return render(request, "questions.html", {"ar": x})
    else:
        return redirect(loginpage)


def addquestion(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "insert into questions values (NULL, '" + request.GET["sectionid"] + "','" + request.GET["question"] + "','" + \
        request.GET["optiona"] + "','" + request.GET["optionb"] + "','" + request.GET["optionc"] + "','" + request.GET[
            "optiond"] + "','" + request.GET["answer"] + "','" + request.GET['flag'] + "')"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("questions")


# def showquestion(request):a
# conn = connect("127.0.0.1", "root", "", "computerisedexam")
# s="select * from questions"
# cr=conn.cursor()
# cr.execute(s)
# result=cr.fetchall()
# x=[]
# for row in result:
# d={"qid":row[0],"sectionid":row[1],"question":row[2],"optiona":row[3],"optionb":row[4],"optionc":row[5],"optiond":row[6],"answer":row[7]}
# x.append(d)
# return render(request,"showquestion.html",{"ar":x})
def deletequestion(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "delete from questions where qid='" + request.GET["q"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("viewquestion")


def viewquestion(request):
    if 'adminemail' in request.session:
        conn = connect("127.0.0.1", "root", "", "computerisedexam")
        query = "select * from sections"
        cr = conn.cursor()
        cr.execute(query)
        result = cr.fetchall()
        x = []
        for row in result:
            d = {}
            d["sectionname"] = row[1]
            d["sectionid"] = row[0]
            x.append(d)
        return render(request, "viewquestion.html", {"ar": x})
    else:
        return redirect(loginpage)


def fetchquestions(request):
    conn = Connect("127.0.0.1", "root", "", "computerisedexam")
    qid = request.GET['secid']
    s = "select * from questions where sectionid='" + qid + "'"
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchall()
    x = []
    for row in result:
        x.append(row)
    return JsonResponse(x, safe=False)


def savequestion(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    qid = request.GET['qid']
    sectionid = request.GET['sectionid']
    question = request.GET['question']
    optiona = request.GET['optiona']
    optionb = request.GET['optionb']
    optionc = request.GET['optionc']
    optiond = request.GET['optiond']
    answer = request.GET['answer']
    flag = request.GET['flag']
    # print(qid,sectionid,question,optiona,optionb,optionc,optiond,answer,flag)
    s = f"update  questions set  question = '{question}', optiona='{optiona}', optionb='{optionb}',optionc='{optionc}',optiond='{optiond}', answer='{answer}', flag='{flag}' where qid='{qid}'"
    # print(s)
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("viewquestion")


def editquestion(request):
    print(request.GET['q'])
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "select * from questions where qid=" + request.GET["q"] + ""
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchone()
    d = {"qid": result[0], "sectionid": result[1], "question": result[2], "optiona": result[3], "optionb": result[4],
         "optionc": result[5],
         "optiond": result[6], "answer": result[7], "flag": result[8]}
    return render(request, "editquestion.html", {"ar": d})


def applicantsignup(request):
    return render(request, "applicantsignup.html")


def signup(request):
    # dt1= (d.date())
    dt1 = datetime.datetime.now()
    dt2 = dt1.strftime("%x")
    print(dt2)
    #
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    s = "insert into registration values (NULL, '" + request.GET["fullname"] + "','" + request.GET["lastname"] + "','" + \
        request.GET["fathername"] + "','" + request.GET["fatherlastname"] + "','" + request.GET["mobile"] + "','" + \
        request.GET["email"] + "','" + request.GET["bloodgroup"] + "','" + request.GET[
            'adhaarnumber'] + "','" + dt2 + "','" + request.GET["password"] + "')"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    return HttpResponseRedirect("applicantsignup")


def applicanthomepage(request):
    return render(request, "applicanthomepage.html")


def applicantlogin(request):
    if 'applicantemail' in request.session:
        return redirect(applicantdashboard)
    else:
        return render(request, "applicantlogin.html")


@csrf_exempt
def applicantslogin(request):
    if request.method=='POST':
        email = request.POST["email"]
        password = request.POST["password"]
        conn = connect("127.0.0.1", "root", "", "computerisedexam")
        s = "select * from registration where email='" + email + "' and  password= '" + password + "'"
        cr = conn.cursor()
        cr.execute(s)
        result = cr.fetchone()
        if result:
            request.session['applicantid']=str(result[0])
            request.session['applicantemail'] = email
            return redirect(applicantdashboard)
        else:
            d = {"message": "invalid password and email"}
            return render(request, "applicantlogin.html", {"ar": d})

def applicantdashboard(request):
    if 'applicantid' in request.session:
        return render(request, "applicantdashboard.html")
    else:
        return redirect(applicantlogin)

@csrf_exempt
def forgetpassuser(request):
    email = request.POST["email"]
    mobile = request.POST["mobile"]
    print(email, mobile)
    query = "select * from registration where email='{0}' and mobile='{1}'".format(email, mobile)
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    cr = conn.cursor()
    cr.execute(query)
    result = cr.fetchone()
    if result:
        try:
            print("send pass code write here", result[10])
            conn = http.client.HTTPConnection("server1.vmm.education")
            conn.request('GET',
                         "/VMMCloudMessaging/AWS_SMS_Sender?username=gagandeepmca&password=SM991UPZ&message=" + result[
                             10] + "&phone_numbers=" + str(mobile))
            response = conn.getresponse()
            print(response.read())

            resplemsg = "<h1> successful send </h1>"
        except:
            resplemsg = " fail due to network problem"
    else:
        resplemsg = "fail due to some error"
    print(result)
    return render(request, "applicantlogin.html", {'msg': resplemsg})


def userchangepassword(request):
    return render(request, "userchangepassword.html")


def useractionchangepassword(request):
    conn = connect("127.0.0.1", "root", "", "computerisedexam")
    email = str(request.session['applicantemail'])
    s = "select * from registration where email='" + email + "' and  password= '" + request.GET[
        "oldpassword"] + "'"
    cr = conn.cursor()
    cr.execute(s)
    result = cr.fetchone()
    if result:
        s = "update registration set  password='" + request.GET["newpassword"] + "' where email='" + email + "'"
        cr = conn.cursor()
        cr.execute(s)
        conn.commit()
        d = {"message": "password change successfully"}
        return render(request, "applicantdashboard.html", {"ar": d})
    else:
        d = {"message": "invalid credentials"}
        return render(request, "userchangepassword.html", {"ar": d})


def userlogout(request):
    try:
        del request.session["applicantemail"]
    except:
        pass
    return render(request, "applicantlogin.html")


def selectsection(request):
    global conn
    query = "select * from sections"
    cr = conn.cursor()
    cr.execute(query)
    result = cr.fetchall()
    x = []
    for row in result:
        d = {}
        d["sectionid"] = row[0]
        d["sectionname"] = row[1]
        x.append(d)
    return render(request, "onlineexam.html", {"ar": x})


def fetchquestionforexam(request):
    section = request.GET["sel"]
    global conn
    s = "SELECT * FROM questions where sectionid='" + section + "' ORDER BY rand() LIMIT 10"
    cr = conn.cursor()
    cr.execute(s)
    res = cr.fetchall()
    x = []
    currentquestion = 0
    for row in res:
        d = {}
        d["qid"] = row[0]
        d["question"] = row[2]
        d["optiona"] = row[3]
        d["optionb"] = row[4]
        d["optionc"] = row[5]
        d["optiond"] = row[6]
        d["answer"] = row[7]
        d["useranswer"] = ""
        d["status"] = "notdone"
        x.append(d)
    request.session["questions"] = x
    request.session["currentquestion"] = currentquestion
    cd = {}
    cd = x[currentquestion]
    z = []
    z.append(cd)
    return JsonResponse(z, safe=False)


def fetchnextquestion(request):
    indes = request.GET["id"]
    print(indes)
    currentquestion = int(indes)
    request.session["currentquestion"] = currentquestion
    print(request.session['currentquestion'])
    x = request.session["questions"]
    print(request.session['questions'])
    list = []
    cd = {}
    cd = x[currentquestion]
    done = []
    number = 0
    for item in x:
        d = item
        if d['status'] == 'done':
            done.append(number)
        number = number + 1
    list.append(cd)
    z = []
    z.append(list)
    z.append(done)
    return JsonResponse(z, safe=False)


def submitanswer(request):
    radio = request.GET["id"]
    print(radio)
    currentquestion = (int)(request.session["currentquestion"])
    print(currentquestion)
    x = request.session["questions"]
    d = x[currentquestion]
    d["status"] = "done"
    d["useranswer"] = radio
    x[currentquestion] = d
    request.session["questions"] = x
    return HttpResponse("success")


# @csrf_exempt
def submittest(request):
    dt1 = datetime.date.today()
    # dt2 = dt1.strftime("%x")
    # print(dt2)
    sel = request.GET["sel"]
    print(sel)
    totalquestion = 10
    totalmarks = 50
    x = request.session["questions"]
    print(x)
    print(type(x))
    # passstatus = ""
    count = 0
    marks = 0
    ss = str(request.session['applicantemail'])
    global conn
    s1 = "select * from registration where email = '" + ss + "'"
    cr = conn.cursor()
    cr.execute(s1)
    result = cr.fetchall()
    print(result)
    for row in result:
        appid = row[0]
    for i in x:
        if i["status"] == "done":
            count += 1
            print(str(i["useranswer"]))
            print(str(i["answer"]))
            if str(i["useranswer"]) == str(i["answer"]):
                marks += 5
    if marks < 25:
        passstatus = "fail"
    else:
        passstatus = "Pass"
    s = "INSERT INTO result (resultid, apid, date, sectionid, totalquestion, totalmarks, marksobtained, passstatus, questionsattempted) VALUES (null ,'" + str(
        appid) + "','" + str(dt1) + "','" + str(sel) + "','" + str(totalquestion) + "','" + str(
        totalmarks) + "','" + str(marks) + "','" + passstatus + "','" + str(count) + "')"
    cr = conn.cursor()
    cr.execute(s)
    conn.commit()
    sq = "select * from result"
    cr.execute(sq)
    fetch = cr.fetchall()
    print(fetch)
    for f in fetch:
        resultid = f[0]
        status = f[7]

    qqq = request.session["questions"]
    for hg in qqq:
        questid = hg["qid"]
        # hg["question"]
        optiona = hg["optiona"]
        optionb = hg["optionb"]
        optionc = hg["optionc"]
        optiond = hg["optiond"]
        answer = hg["answer"]
        useranswer = hg["useranswer"]
        stat = hg["status"]
        mar = 0
        if str(hg["useranswer"]) == str(hg["answer"]):
            mar = 5
        else:
            mar = 0

        s2 = "INSERT INTO resultdetail(detailid, resultid, qid, optiona, optionb, optionc, optiond, actualanswer , useranswer , status, marks) VALUES (null,'" + str(
            resultid) + "','" + str(
            questid) + "','" + optiona + "','" + optionb + "','" + optionc + "','" + optiond + "','" + answer + "','" + useranswer + "','" + stat + "','" + str(
            mar) + "')"
        cr.execute(s2)
        conn.commit()
    return HttpResponse("Test Submitted")


def showww(request):
    return render(request, "showresult.html")


def showresult(request):
    apid = request.GET["apid"]
    print(apid)
    s = "select * from result where apid = '" + apid + "'"
    global conn
    cr = conn.cursor()
    cr.execute(s)
    fetch = cr.fetchall()
    print(fetch)
    x = []
    for row in fetch:
        d = {}
        d["resultid"] = row[0]
        d["apid"] = row[1]
        d["date"] = row[2]
        d["sectionid"] = row[3]
        d["totalquestion"] = row[4]
        d["totalmarks"] = row[5]
        d["marksobtained"] = row[6]
        d["passstatus"] = row[7]
        d["questionattemped"] = row[8]
        x.append(d)
    return JsonResponse(x, safe=False)


def showresultdetail(request):
    id = request.GET['resultid']
    print(id)
    s1 = f"select resultdetail.detailid,resultdetail.resultid,questions.question,resultdetail.optiona,resultdetail.optionb,resultdetail.optionc,resultdetail.optiond,resultdetail.actualanswer,resultdetail.useranswer,resultdetail.status,resultdetail.marks from resultdetail inner join questions on resultdetail.qid = questions.qid where resultid ={id}"
    print(s1)
    global conn
    cr = conn.cursor()
    cr.execute(s1)
    rrrrrrrrrr = cr.fetchall()
    print(rrrrrrrrrr)
    ddd = []
    for i in rrrrrrrrrr:
        d = {}
        d["resultid"] = i[1]
        d["questionid"] = i[2]
        d["optiona"] = i[3]
        d["optionb"] = i[4]
        d["optionc"] = i[5]
        d["optiond"] = i[6]
        d["actualanswer"] = i[7]
        d["useranswer"] = i[8]
        d["status"] = i[9]
        d["marks"] = i[10]
        ddd.append(d)

    print(ddd)
    return render(request, "showresultdetail.html", {"ar": ddd})


def load(request):
    return render(request, "democlock.html")


def index(request):
    return render(request, "index.html")


def about(request):
    return render(request, "about.html")


def contact(request):
    return render(request, "contact.html")



def gallery(request):
    return render(request, "gallery.html")


def readmore(request):
    return render(request, "readmore.html")
