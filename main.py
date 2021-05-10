import os
from flask import Flask, session
from datetime import timedelta

"""
    This is version 2 of the project.
    Not gonna create core/info.py
    All database login info setting will be placed in util/sql_utils.py
    ^ Kinda like config
"""

app = Flask(__name__)
# IDK what these are. They are from Google
app.config['SECRET_KEY'] = os.urandom(24)
app.config['PERMANENT_SESSION_LIFETIME'] = timedelta(days=31)

from util.img_utils import lmPointL, lmPointR

# Different pages
from info_page import info
from courses_page import courses
from add_course_page import add_course

@app.route('/')
def index():
    session.permanent = True

    form = """
    <div align="center" style="text-align:center">
        <form method="post" action="/info">
            {0} 輸入學號：<input name="sid_input"> <input type="submit" value="送出"> {1}
        </form>
    </div>
    """.format(lmPointR, lmPointL)

    return form