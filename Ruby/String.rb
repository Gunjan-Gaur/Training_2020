2.7.0 :048 > s = "gunjan"

2.7.0 :049 > s[0,3]
 => "gun" 

2.7.0 :050 > s[1..-2]
 => "unja" 

2.7.0 :051 > s[0..-2]
 => "gunja" 

2.7.0 :052 > s[0...-2]
 => "gunj" 

2.7.0 :053 > s[0..2]=""

2.7.0 :054 > p s
"jan"
 => "jan" 

------------------------------------
Padding the string
2.7.0 :055 > b_s="1101"

2.7.0 :057 > b_s.rjust(8,"3")
 => "33331101" 

2.7.0 :058 > b_s.ljust(8,"3")
 => "11013333" 

-----------------------------------
Comparing string ignoring case
2.7.0 :059 > a = "ruby"
2.7.0 :060 > b = "RUBY"
2.7.0 :061 > a.upcase == b.upcase
 => true 

-----------------------------------
Trim string
2.7.0 :062 > x = "  strip "
2.7.0 :063 > x.strip
 => "strip"

----------------------------------
Prefix & suffix
2.7.0 :064 > string = "hey there"

2.7.0 :065 > string.start_with? "Hello"
 => false 

2.7.0 :066 > string.end_with? "there"
 => true 

2.7.0 :067 > string.delete_suffix("there")
 => "hey " 

2.7.0 :068 > string = "hey there"

2.7.0 :069 > string.delete_prefix("there")
 => "hey there" 

-------------------------------------
