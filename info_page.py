import pandas as pd

from flask import Flask, request, session, flash

from main import app
from util.utils import log
from util.sql_utils import getAllCoursesDetaile, searchStudent

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

    student = list(student[0])

    return html

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

# def buildInfo(studentData):