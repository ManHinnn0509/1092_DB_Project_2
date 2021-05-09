import MySQLdb

import sys
sys.path.append(".")

from util.utils import log
from core.config import *
from core.table_names import *

# Seems kinda pointless to make this but whatever
def genConnection():

    return MySQLdb.connect(
        host = host, user = user, passwd = passwd, db = db, 
        charset = 'utf8', use_unicode = True
    )

def execQuery(query, returnList = False):
    try:
        query = query.replace("\n", "")

        conn = genConnection()

        cursor = conn.cursor()
        cursor.execute(query)

        conn.commit()
        
        r = cursor.fetchall()

        # log("[DEBUG] Executed query [{}]".format(query))
        # log("[DEBUG] Query result: {}".format(str(r)))

        if not (returnList):
            return r
        else:
            return [list(e) for e in r]
    except Exception as e:
        log(e)
        # log("[ERROR] Something went wrong when executing query [{}]".format(query))
        return None

def searchStudent(sid):
    q = 'SELECT * FROM {} WHERE sid = "{}"'.format(studentTableName, sid)
    return execQuery(q)

def getAllCoursesDetailed():
    q = """
    SELECT c.cid, c.class, c.name, c.credit, c.is_compuls, c.dept, c.taken, c.max_taken, c.t_name, 
    ct.weekday, ct.session 
    FROM {0} AS c, {1} AS ct 
    WHERE c.cid = ct.cid;
    """.format(courseTableName, courseTimeTableName)

    return execQuery(q)
