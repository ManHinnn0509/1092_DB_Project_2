from util.time_utils import genTimetable
import pandas as pd

from flask import Flask, request, session

from main import app
from util.img_utils import *
from util.sql_utils import *
from util.utils import log
from util.time_utils import timeList, extractCourseName

from classes.student import Student
from classes.detailed_course import DetailedCourse

# Enter Student at HTML
@app.route('/info', methods=['POST', 'GET'])
def info():
    html = "<p><a href='/'>Back to Query Interface</a></p>"

    success, rtn = getSID()
    if not (success):
        html += rtn
        return html
    
    # rtn will be the SID if success if True
    sid = rtn
    student = searchStudent(sid)
    if (len(student) == 0):
        html += "<p>Invalid Student ID!</p>"
        return html
    
    # Save the sid for course selecting
    session['sid'] = sid
    
    # Page title
    html += "<title>Your fucking info</title>"

    # Button
    html += """
        <form method="post" action="/courses" >
            {0} <input type="submit" value="查看所有課程">
        </form>
    """.format("")

    s = Student(student[0])
    t = s.getTimetable()
    if ((t == None) or (t == "")):
        r = initTimetable(s)
        log(str(r))
        # "Refresh" after initializing timetable
        s = Student(searchStudent(sid)[0])

    html += '<p>Hello <span style="color: #0000ff">{}</span>, welcome back. {}</p>'.format(s.getName(), imgMouseCB)
    html += buildInfo(s)

    html += "<br>" * 3
    html += "<p>Your timetable here. {}</p>".format(imgPig)

    timetable = s.getTimetable()
    html += buildTimetable(timetable)

    return html


def initTimetable(student):
    
    """
        Don't have to consider about max credit etc
        Since the credit will be 0
    """

    try:
        timetable = genTimetable()

        sCredit = student.getCredit()

        dyc = student.getDeptYearClass()
        complus = getCoursesDetailed(dyc)

        for c in complus:
            c = list(c)
            course = DetailedCourse(c)

            if not (course.isCompuls()):
                continue

            # Remove this?
            """
            if (course.isFulled()):
                continue
            """

            credit = course.getCredit()

            weekday = course.getWeekday()
            session = course.getSession()

            timetable[weekday][timeList[session]] = c
            sCredit += credit

            course.addStudent()
        
        student.updateCreditTimetable(sCredit, timetable)
        return True

    except Exception as e:
        log(e)
        return False

def buildTimetable(timetable):
    timetable = extractCourseName(timetable)

    df = pd.DataFrame.from_dict(data = timetable)
    df.fillna(" ").T
    return df.to_html()

def buildInfo(student):

    s = student.getDataList()

    # Removes the timetable
    s.pop(-1)

    col = ["學生ID", "姓名", "性別", "學系", "班級", "學分"]
    df = pd.DataFrame([s], columns = col)
    df.fillna(" ").T
    return df.to_html(index=False)

def getSID():
    
    # No input. Empty string
    sid = request.form.get("sid_input")
    if (sid == ""):
        html = "<p>Please enter your studnet ID!</p>"
        return False, html
    
    # The sid will be None when enter this page from /courses
    if (sid == None):
        sid = session.get("sid")

        # It might still be null even if using the get method.
        # Return at this point
        if (sid == None):
            html = "<p>Please login again</p>"
            return False, html
    
    return True, sid