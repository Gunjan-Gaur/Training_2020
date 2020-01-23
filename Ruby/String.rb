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
Convert array to string
2.7.0 :081 > arr = ["hey","there"]
2.7.0 :082 > arr.join
 => "heythere" 

2.7.0 :083 > arr = ["hey","there"]
2.7.0 :084 > arr.join("-")
 => "hey-there" 

------------------------------------
Check if string is number
2.7.0 :085 > "123".match?(/\A-?\d+\Z/)
 => true 

2.7.0 :086 > "gyh".match?(/\A-?\d+\Z/)
 => false 

2.7.0 :088 > "2gyh2".match?(/\A-?\d+\Z/)
 => false 

2.7.0 :089 > "2782".match?(/\A-?\d+\Z/)
 => true

-------------------------------------- 
Append string
2.7.0 :093 > s = ""

2.7.0 :094 > s << "hey"
 => "hey" 

2.7.0 :095 > s << "there"
 => "heythere" 

2.7.0 :096 > s << " gun"
 => "heythere gun" 

--------------------------------------
Iterate of characters
2.7.0 :097 > "gunjangaur".each_char{|ch| puts ch}
g
u
n
j
a
n
g
a
u
r
 => "gunjangaur" 

2.7.0 :098 > "gunjangaur".each_char{|ch| print ch}
gunjangaur => "gunjangaur" 

2.7.0 :099 > a="gunjangaur".chars
2.7.0 :100 > print a
["g", "u", "n", "j", "a", "n", "g", "a", "u", "r"] => nil 
