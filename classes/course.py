class Course:
    def __init__(self, courseData):
        self.courseData = courseData
    
    def getDeptYearClass(self):
        return self.courseData[0]

    def getName(self):
        return self.courseData[1]
    
    def getCID(self):
        return self.courseData[2]
    
    def getCredit(self):
        return self.courseData[3]
    
    def isCompuls(self):
        return self.courseData[4] == "M"
    
    def getDept(self):
        return self.courseData[5]
    
    def getMaxTaken(self):
        return self.courseData[6]
    
    def getTaken(self):
        return self.courseData[7]
    
    def getInstructorName(self):
        return self.courseData[8]
    