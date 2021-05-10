import pandas as pd

from flask import Flask, request, session
from main import app
from classes.detailed_course import isCompulsIndex
from util.sql_utils import *
from util.img_utils import lmPointR

@app.route('/courses', methods=['POST', 'GET'])
def courses():

    sid = session.get("sid")
    log("[DEBUG] [courses_page] SID -> {}".format(sid))

    if (sid == None):
        html = """
        <p><a href='/'>Back to Query Interface</a></p>
        <p>Please login again</p>
        """

        return html

    html = """
    <title>Courses page</title>
    <p><a href="/info">Back to Info page</a></p>
    
    <form method="post" action="/add_course">
        {0} 加選課程 (請輸入選課代號)：<input name="cid_input">
        <input type="submit" value="送出">
    </form>

    <form method="post" action="/drop_course">
        {1} 退選課程 (請輸入選課代號)：<input name="cid_drop_input">
        <input type="submit" value="送出">
    </form>
    """.format(lmPointR, lmPointR)

    html += buildCoursesTable()
    return html

def buildCoursesTable():

    allCourses = getCoursesDetailed("", "")
    l = []

    for c in allCourses:
        c = list(c)
        c[isCompulsIndex] = "必修" if (c[isCompulsIndex] == "M") else "選修"
        l.append(c)


    fillna = "——"
    col = ['選課代號', '開課班級', '課程名稱', '學分數', '必選修', '開課單位', '已收授人數', '開課人數', '授課教師', '星期', '節']
    
    df = pd.DataFrame(l, columns = col)
    df.fillna(fillna, inplace=True)
    html = df.to_html()

    return html