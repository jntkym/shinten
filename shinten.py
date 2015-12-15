#!/usr/bin/python
# -*- coding: utf-8 -*-

def makeTimeTable():
  timetable = []
  i = 0
  while i < 3:
    tmp_table = []
    print("%d 時間目" % (int(i)+1))
    print("Enter the name of student(Put blank for no student)")
    print(":")
    name_string = raw_input()
    name_array = name_string.split(",")
    timetable.append(name_array)
    i = i + 1
  print(timetable)
  return timetable
  
def scrutinizeTimeTable(timetable):  
  result = []
  for i in xrange(2):
    dub = []
    for j in timetable[i]:
      for k in timetable[i+1]:
          if k == j:
            dub.append(k)
            timetable[i].pop(timetable[i].index(k))
    print "generation %d (original)" % i
    print dub
    result.append(timetable[i])
    if i == 0:
      for j in dub:
        if j in timetable[2]:
          dub.pop(dub.index(j))
    print "generation %d (modified)" % i
    print dub
    for l in dub:
      if l in timetable[i+1]:
        timetable[i+1].pop(timetable[i+1].index(l))
    result.append(dub)
  result.append(timetable[i+1])
  
  return [flatten for inner in result for flatten in inner]

def main():
  time_table = makeTimeTable()
  res_timetable = scrutinizeTimeTable(time_table)
  print res_timetable

if __name__ == '__main__':
  main()
