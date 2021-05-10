import sys
sys.path.append(".")

from core.table_names import *
from util.sql_utils import execQuery

class Course:
    def __init__(self, courseData):
        self.courseData = list(courseData)
    
    def getDeptYearClass(self):
        return self.courseData[0]

    def getName(self):
        return self.courseData[1]
    
    def getCID(self):
        return self.courseData[2]
    
    def getCredit(self):
        return self.courseData[3]
    
    def isCompuls(self):
        return (self.courseData[4] == "M")
    
    def getDept(self):
        return self.courseData[5]
    
    def getMaxTaken(self):
        return self.courseData[6]
    
    def getTaken(self):
        return self.courseData[7]
    
    def getInstructorName(self):
        return self.courseData[8]
    
    def getDataList(self):
        return list(self.courseData)
    
    def getDataTuple(self):
        return tuple(self.courseData)
    
    def isFulled(self):
        return (self.getTaken() >= self.getMaxTaken())

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