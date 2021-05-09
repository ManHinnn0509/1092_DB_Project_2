import sys
sys.path.append(".")

from util.sql_utils import execQuery
from core.table_names import *

class DetailedCourse:
    def __init__(self, courseData):
        self.courseData = list(courseData)
    
    def getDeptYearClass(self):
        return self.courseData[1]

    def getName(self):
        return self.courseData[2]
    
    def getCID(self):
        return self.courseData[0]
    
    def getCredit(self):
        return self.courseData[3]
    
    def isCompuls(self):
        return (self.courseData[4] == "M")
    
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
        return (self.getTaken() >= self.getMaxTaken())
    
    def addStudent(self):
        try:
            q = 'UPDATE {} SET taken = taken + 1 WHERE cid = "{}"'.format(courseTableName, self.getCID())
            execQuery(q)
            return True
        except:
            return False