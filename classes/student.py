class Student:
    def __init__(self, studentData):
        self.studentData = studentData
    
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