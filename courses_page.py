import pandas as pd

from flask import Flask, request, session
from main import app
from util.sql_utils import *
from util.img_utils import lmPointR

@app.route('/courses', methods=['POST', 'GET'])
def courses():
    html = "<p><a href='/info'>Back to info page</a></p>"

    html += """
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

    c = getCoursesDetailed()

# def buildCoursesTable(c):
