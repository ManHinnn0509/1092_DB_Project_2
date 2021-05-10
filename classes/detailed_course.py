import sys
sys.path.append(".")

from util.sql_utils import execQuery
from core.table_names import *
from util.utils import log

isCompulsIndex = 4
courseNameIndex = 2

class DetailedCourse:
    def __init__(self, courseData):
        self.courseData = list(courseData)
    
    def getDeptYearClass(self):
        return self.courseData[1]

    def getName(self):
        return self.courseData[courseNameIndex]
    
    def getCID(self):
        return self.courseData[0]
    
    def getCredit(self):
        return self.courseData[3]
    
    def isCompuls(self):
        return (self.courseData[isCompulsIndex] == "M")
    
    def getDept(self):
        return self.courseData[5]
    
    def getMaxTaken(self):
        return self.courseData[7]
    
    def getTaken(self):
        return self.courseData[6]
    
    def getInstructorName(self):
        return self.courseData[8]
    
    def getWeekday(self):
        return self.courseData[9]
    
    def getSession(self):
        return self.courseData[10]

    def getDataList(self):
        return list(self.courseData)
    
    def getDataTuple(self):
        return tuple(self.courseData)
    
    def isFulled(self):
        taken = self.getTaken()
        maxTaken = self.getMaxTaken()
        
        return (taken >= maxTaken)
    
    def addStudent(self):
        try:
            q = 'UPDATE {} SET taken = taken + 1 WHERE cid = "{}"'.format(courseTableName, self.getCID())
            execQuery(q)
            return True
        except:
            return False

    def removeStudent(self):
        try:
            q = 'UPDATE {} SET taken = taken - 1 WHERE cid = "{}"'.format(courseTableName, self.getCID())
            execQuery(q)
            return True
        except:
            return False