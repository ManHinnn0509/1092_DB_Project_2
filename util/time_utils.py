import sys
sys.path.append(".")

from core.table_names import *
from classes.detailed_course import courseNameIndex

weekdays = ['一', '二', '三', '四', '五', '六', '日']
weekdaysDict = {'一': 'MON', '二': 'TUE', '三': 'WED', '四': 'THU', '五': 'FRI', '六': 'SAT', '日': 'SUN'}

timeList = ['-', '08:10~09:00', '09:10~10:00', '10:10~11:00', '11:10~12:00', '12:10~13:00', '13:10~14:00', '14:10~15:00', '15:10~16:00', '16:10~17:00', '17:10~18:00', '18:30~19:20', '19:25~20:15', '20:25~21:15', '21:20~22:10']

# Template?
def genTimetable():
    d = {}
    for weekday in weekdays:
        d[weekday] = {}
        for i in range (1, len(timeList)):
            # d[weekday][(i)] = {}
            d[weekday][(timeList[i])] = ""
    return d

def extractCourseName(timetable):
    if (isinstance(timetable, str)):
        try:
            timetable = eval(timetable)
        except:
            print("Unable to extract course name from timetable...")
            # timetable = genTimetable()
            return genTimetable()

    d = timetable
    for weekday, t in d.items():
        day = d[weekday]
        times = list(day.keys())
        for time in times:
            course = day[time]
            if (course == ""):
                continue
            # day[time] = course[courseNameIndex]       # Course name
            d[weekday][time] = course[courseNameIndex]

    return d