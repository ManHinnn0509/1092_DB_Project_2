from datetime import time
import sys
sys.path.append(".")

from util.sql_utils import *
from util.time_utils import timeList
from core.config import maxCredit, minCredit
from classes.detailed_course import courseNameIndex, cidIndex

class Student:
    def __init__(self, studentData):
        self.studentData = list(studentData)
    
    def getSID(self):
        return self.studentData[0]
    
    def getName(self):
        return self.studentData[1]
    
    def getGender(self):
        return self.studentData[2]
    
    def getDept(self):
        return self.studentData[3]
    
    def getDeptYearClass(self):
        return self.studentData[4]
    
    def getCredit(self):
        return self.studentData[5]
    
    def getTimetable(self):
        return self.studentData[6]
    
    def getDataList(self):
        return list(self.studentData)
    
    def getDataTuple(self):
        return tuple(self.studentData)
    
    def reachedMaxCredit(self, credit):
        return (self.getCredit() + credit > maxCredit)
    
    def reachedMinCredit(self, credit):
        return (self.getCredit() - credit < minCredit)
    
    # I think I should rename this...?
    def hasCourse(self, courseID):

        # Lazy way ~
        # return (str(courseID) in str(self.getTimetable()))

        d = eval(self.getTimetable())

        for weekday, t in d.items():
            day = d[weekday]
            times = list(day.keys())
            for time in times:
                course = day[time]
                if (course == ""):
                    continue
                if (d[weekday][time][cidIndex] == courseID):
                    return True, [weekday, time]
        
        return False, None
    
    def hasCourseSameTime(self, weekday, session):
        timetable = eval(self.getTimetable())
        return timetable[weekday][timeList[session]] != ""
    
    def hasSameCourse(self, courseName):
        # Timetable stores "DetailedCourse"
        # See initTimetable() in info_page.py

        d = self.getTimetable()
        try:
            d = dict(d)
        except:
            d = eval(d)

        for weekday, t in d.items():
            day = d[weekday]
            times = list(day.keys())
            for time in times:
                course = day[time]
                if (course == ""):
                    continue
                if (d[weekday][time][courseNameIndex] == courseName):
                    return True
        
        return False

    def updateCreditTimetable(self, newCredit, newTimetable):
        q = 'UPDATE {} SET credit = {}, timetable = "{}" WHERE sid = "{}"'.format(studentTableName, newCredit, (newTimetable), self.getSID())
        execQuery(q)