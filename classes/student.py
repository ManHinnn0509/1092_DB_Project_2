from datetime import time
import sys
sys.path.append(".")

from util.sql_utils import *
from util.time_utils import timeList
from core.config import maxCredit, minCredit

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
    
    def hasCourse(self, weekday, session):
        timetable = self.getTimetable()

        try:
            timetable = dict(timetable)
        except:
            timetable = eval(timetable)
        
        return timetable[weekday][timeList[session]] != ""

    def updateCreditTimetable(self, newCredit, newTimetable):
        q = 'UPDATE {} SET credit = {}, timetable = "{}" WHERE sid = "{}"'.format(studentTableName, newCredit, (newTimetable), self.getSID())
        execQuery(q)