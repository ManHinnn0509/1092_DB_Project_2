from classes.detailed_course import DetailedCourse
import pandas as pd

from flask import Flask, request, session
from main import app
from util.sql_utils import *
from util.img_utils import lmPointR

@app.route('/courses', methods=['POST', 'GET'])
def courses():
    html = """
    <title>Courses page</title>
    <p><a href="/info">Back to Info page</a></p>
    
    <form method="post" action="/add_course">
        {0} 加選課程 (請輸入課程ID)：<input name="cid_input">
        <input type="submit" value="送出">
    </form>

    <form method="post" action="/drop_course">
        {1} 退選課程 (請輸入課程ID)：<input name="cid_drop_input">
        <input type="submit" value="送出">
    </form>
    """.format(lmPointR, lmPointR)

    sid = session.get("sid")
    log("[DEBUG] [courses_page] SID -> {}".format(sid))

    table = buildCoursesTable()
    html += table
    return html

def buildCoursesTable():
    isCompulsIndex = 4

    allCourses = getCoursesDetailed()
    l = []

    for c in allCourses:
        c = list(c)
        c[isCompulsIndex] = "必修" if (c[isCompulsIndex] == "M") else "選修"
        l.append(c)


    fillna = "——"
    col = ['cid', 'class', 'name', 'credit', 'is_compuls', 'dept', 'taken', 'max_taken', 't_name', 'weekday', 'session']
    
    df = pd.DataFrame(l, columns = col)
    df.fillna(fillna, inplace=True)
    html = df.to_html()

    return html