import flask
from flask import Flask, request, session

from classes.student import Student
from classes.detailed_course import DetailedCourse

from main import app
from util.utils import *
from util.sql_utils import *
from util.time_utils import timeList

# Kinda the same as add_course

@app.route('/drop_course', methods=['POST', 'GET'])
def drop_course():
    
    html = "<p><a href='/courses'>Back to courses page</a></p>"

    session = flask.session
    sid = session.get("sid")

    log("[DEBUG] [drop_course] SID -> {}".format(sid))

    # Student ID not found etc
    if ((sid == None) or (sid == "")):
        html = "<p><a href='/'>Back to login page</a></p>"
        html += "<p>Please login again</p>"
        return html

    cid = request.form.get("cid_input")
    log(cid)
    c = searchCourseDetailed(cid)
    
    # Invalid Course ID
    if (len(c) == 0):
        html += "<p>Invalid course id!</p>"
        return html
    
    student = Student(searchStudent(sid)[0])
    hasCourse, l = student.hasCourse(cid)
    if not (hasCourse):
        html += "<p>You don't have this course in your timetable!</p>"
        return html
    
    weekday = l[0]
    time = l[1]      # Same name with flask's session lol

    course = DetailedCourse(c[0])
    cCredit = course.getCredit()

    if (student.reachedMinCredit(cCredit)):
        html += "<p>You can't drop this course! (Reason: Minimum credit reached)</p>"
        return html
    

    sCredit = student.getCredit()

    timetable = eval(student.getTimetable())

    # Removes the course from the student's timetable and also the amount of credit of the target course
    timetable[weekday][time] = ""
    newCredit = sCredit - cCredit

    if (course.isCompuls()):
        html += alertBox("Course [{}] (ID: {}) is a compulsory course".format(course.getName(), cid))

    student.updateCreditTimetable(newCredit, timetable)
    course.removeStudent()

    html += "<p>Course dropped!</p>"
    return html