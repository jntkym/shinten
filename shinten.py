#!/usr/bin/python
# -*- coding: utf-8 -*-

def makeTimeTable():
  timetable = []
  i = 0
  while i < 3:
    j = 0
    tmp_table = []
    print("%d 時間目" % (int(i)+1))
    print("Enter the name of student(Put blank for no student)")
    while j < 6:
      #カンマで自動分割するようにする
      print(":")
      input_name = raw_input()
      tmp_table.append(input_name)
      j = j + 1
    time_table.append(tmp_table)
    i = i + 1
  print(timetable)
  return timetable
  
#def scrutinizeTimeTable(timetable): 
  
def main():
  time_table = makeTimeTable()
  #result = scrutinizeTimeTable(time_table)
  #print result

if __name__ == '__main__':
  main()
