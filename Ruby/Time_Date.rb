Time
-----------------------------------
2.7.0 :046 > time = Time.new(2020,1,24,6,1,5)

2.7.0 :047 > time.year
 => 2020 

2.7.0 :048 > time.month
 => 1 

2.7.0 :033 > time.day
 => 24 

2.7.0 :034 > time.sec
 => 5 

2.7.0 :035 > time.wday
 => 5 

2.7.0 :036 > time.yday
 => 24 

2.7.0 :037 > time.usec
 => 0 

2.7.0 :039 > time.dst?
 => false 

2.7.0 :040 > time.subsec
 => 0 

2.7.0 :041 > time.to_a
 => [5, 1, 6, 24, 1, 2020, 5, 24, false, "IST"] 

2.7.0 :042 > time.to_f
 => 1579825865.0 

2.7.0 :043 > time2 = time + 2590200

2.7.0 :044 > puts time
2020-01-24 06:01:05 +0530
 => nil 

2.7.0 :045 > puts time2
2020-02-23 05:31:05 +0530
 => nil 

2.7.0 :015 > puts time.to_s
2020-01-27 10:54:54 UTC

2.7.0 :017 > puts time.localtime
2020-01-27 16:24:54 +0530

2.7.0 :018 > puts time.strftime("%Y-%m-%d %H:%M:%S")
2020-01-27 16:24:54

2.7.0 :019 > puts time.strftime("%Y-%m-%d-%a %H:%M:%S")
2020-01-27-Mon 16:24:54

2.7.0 :020 > puts time.strftime("%Y-%m-%d-%a-%A %H:%M:%S")
2020-01-27-Mon-Monday 16:24:54

2.7.0 :021 > puts time.strftime("%Y-%m-%d-%a-%A-%c %H:%M:%S")
2020-01-27-Mon-Monday-Mon Jan 27 16:24:54 2020 16:24:54
 => nil 

2.7.0 :022 > puts time.strftime("%Y-%m-%d-%a-%A-%p %H:%M:%S")
2020-01-27-Mon-Monday-PM 16:24:54
 => nil 

2.7.0 :023 > puts time.strftime("%Y-%m-%d-%a-%A-%p-%y %H:%M:%S")
2020-01-27-Mon-Monday-PM-20 16:24:54
 => nil 

----------------------------------------
Date and DateTime
require 'date'
2.7.0 :053 > d = Date.new(2020,1,24)

2.7.0 :054 > puts d
2020-01-24
 => nil 

2.7.0 :055 > d = Date.parse("2019-02-03")

2.7.0 :056 > puts d
2019-02-03
 => nil 

2.7.0 :057 > d = Time.new(2003,2,3,4,5,6).to_date
2003
 => nil 

2.7.0 :059 > puts d.day
3
 => nil 

2.7.0 :061 > puts d.month
2
 => nil 

2.7.0 :062 > puts d.day
3
 => nil 

2.7.0 :064 > puts d.ctime
Mon Feb  3 00:00:00 2003
 => nil 

2.7.0 :004 > time = DateTime.new(2004,4,5)

2.7.0 :005 > print time.to_date
2004-04-05 => nil 

2.7.0 :006 > print time.to_datetime
2004-04-05T00:00:00+00:00 => nil 

2.7.0 :007 > print time.to_s
2004-04-05T00:00:00+00:00 => nil 
