import re
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
        # Removes the new line character since it will cause error 
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

def searchCourse(cid):
    # Keep it like this? Or use the getCoursesDetailed() function???
    q = 'SELECT * FROM {} WHERE cid = "{}"'.format(courseTableName, cid)
    return execQuery(q)

def searchCourseDetailed(cid):
    return getCoursesDetailed("", cid)

def getCoursesDetailed(className, cid):
    q = """
    SELECT c.cid, c.class, c.name, c.credit, c.is_compuls, c.dept, c.taken, c.max_taken, c.t_name, 
    ct.weekday, ct.session 
    FROM {0} AS c, {1} AS ct 
    WHERE c.cid = ct.cid
    """.format(courseTableName, courseTimeTableName)

    if ((className != "")):
        q = q + " " + 'AND c.class = "{}"'.format(className)
    
    if ((cid != "")):
        q = q + " " + 'AND c.cid = "{}"'.format(cid)
    
    q = q + ";"

    """
    For testing (Copy)
    
    SELECT c.cid, c.class, c.name, c.credit, c.is_compuls, c.dept, c.taken, c.max_taken, c.t_name, 
    ct.weekday, ct.session 
    FROM course AS c, course_time AS ct 
    WHERE c.cid = ct.cid
    """
    result = execQuery(q)
    # print(result)
    
    if (cid == "" and className == ""):
        return result
    if (cid != ""):
        formattedCourseData = list(result[0])
        formattedCourseData[9] = []
        formattedCourseData[10] = []

        for data in result:
            formattedCourseData[9].append(data[9])
            formattedCourseData[10].append(data[10])
        
        # print(formattedCourseData)
        return [formattedCourseData]
    
    if (len(result) == 0):
        return result
    elif (len(result) == 1):
        return result
    
    result = list(result)
    for x in range (len(result)):
        result[x] = list(result[x])

    d = {}
    for ele in result:
        cid = str(ele[0])
        w = ele[9]
        s = ele[10]

        if (cid not in d):
            d[cid] = []
        else:
            d[cid] += [[w, s]]
    
    l = []
    for ele in result:
        if (l == []):
            ele[9] = []
            ele[10] = []
            l.append(ele)
            continue
        
        cid = str(ele[0])

        inL = False
        for e in l:
            if (cid == e[0]):
                inL = True
                break
        
        if (inL == False):
            ele[9] = []
            ele[10] = []
            l.append(ele)

    for ele in l:
        cid = ele[0]
        # print(ele)

        data = d[cid]
        for x in range (len(data)):
            dataSet = data[x]
            print(dataSet)

            ele[9].append(dataSet[0])
            ele[10].append(dataSet[1])

    # print(l)
    return l