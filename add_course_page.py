import flask
from classes.student import Student
from classes.detailed_course import DetailedCourse

from flask import Flask, request, session
from main import app
from util.utils import *
from util.sql_utils import *
from util.time_utils import timeList

@app.route('/add_course', methods=['POST', 'GET'])
def add_course():
    
    html = "<p><a href='/courses'>Back to courses page</a></p>"

    session = flask.session
    sid = session.get("sid")

    log("[DEBUG] [add_course] SID -> {}".format(sid))

    # Student ID not found etc
    if ((sid == None) or (sid == "")):
        html = "<p><a href='/'>Back to login page</a></p>"
        html += "<p>Please login again</p>"
        return html
    
    cid = request.form.get("cid_input")
    c = searchCourseDetailed(cid)
    print(c)
    
    # Invalid Course ID
    if (len(c) == 0):
        html += "<p>Invalid course id!</p>"
        return html
    
    c = c[0]
    print(c)
    c = list(c)
    print(c)
    
    course = DetailedCourse(c)
    if (course.isFulled()):
        html += "<p>You cannot add this course! (Reason: Course is fulled)</p>"
        return html

    student = Student(searchStudent(sid)[0])
    courseCredit = course.getCredit()
    if (student.reachedMaxCredit(courseCredit)):
        html += "<p>You cannot add this course! (Reason: Maximum credit reached)</p>"
        return html
    
    inCourse, l = student.inThisCourse(cid)
    if (inCourse):
        html += "<p>You're in this course already!</p>"
        return html
    
    weekday = course.getWeekday()
    session = course.getSession()
    if (student.hasCourseSameTime(weekday, session)):
        html += "<p>You cannot add this course! (Reason: You have another course at the same time)</p>"
        return html
    
    courseName = course.getName()
    if (student.hasSameCourse(courseName)):
        html += "<p>You cannot add this course! (Reason: You have the same course already)</p>"
        return html
    
    timetable = eval(student.getTimetable())

    l = len(weekday)
    for x in range (0, l):
        w = weekday[x]
        s = session[x]
        timetable[w][timeList[s]] = (c)
    
    newCredit = student.getCredit() + courseCredit

    student.updateCreditTimetable(newCredit, timetable)
    course.addStudent()

    html += "<p>Course added!</p>"
    return html