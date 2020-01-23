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

----------------------------------------
Upper and lower case
2.7.0 :101 > s = "abcd"
2.7.0 :102 > s.upcase
 => "ABCD" 

2.7.0 :103 > s = "ASDF"
2.7.0 :104 > s.downcase
 => "asdf" 

---------------------------------------
Bytes 
2.7.0 :128 > str = "gunjan"
2.7.0 :129 > str.each_byte.to_a
 => [103, 117, 110, 106, 97, 110] 

---------------------------------------
 Byteslice
"hello".byteslice(1)     
 => "e"
"hello".byteslice(-1)    
 => "o"
"hello".byteslice(1, 2)  
 => "el"

-------------------------------------
Capatalize
"hello".capitalize    
 => "Hello"
"HELLO".capitalize    
 => "Hello"

-------------------------------------
casecmp
2.7.0 :131 > "gUnjAn".casecmp("gunjan")
 => 0 

2.7.0 :132 > "gUnjAn".casecmp("gunjang")
 => -1 

2.7.0 :133 > "gUnjAnhu".casecmp("gunjang")
 => 1 

---------------------------------------
casecmp?
2.7.0 :134 > "abcdef".casecmp?("abcdef")
 => true 

2.7.0 :135 > "abcdef".casecmp?("abcdefh")
 => false 

2.7.0 :136 > "abcdehjuf".casecmp?("abcdefh")
 => false 

--------------------------------------
chop
2.7.0 :144 > "string\r\n".chop
 => "string" 

--------------------------------------
chr
a = "abcde"
a.chr    
 => "a"

------------------------------------- 
---------------------------------------	
MultiLine String
2.7.0 :105"> b =<<-String

2.7.0 :106"> ds

2.7.0 :108"> sxcsx

2.7.0 :109"> ds

2.7.0 :110"> x

2.7.0 :111 > String

2.7.0 :112 > p b
"ds\nsa\nsxcsx\nds\nx\n"
 => "ds\nsa\nsxcsx\nds\nx\n" 

--------------------------------------
Gsub method
2.7.0 :113 > s = "m hu don"

2.7.0 :114 > s.gsub("don","Giyan")
 => "m hu Giyan" 

--------------------------------------
Remove last character from string

2.7.0 :115 > puts "What's your name?"
What's your name?
 => nil 

2.7.0 :116 > name = gets
Gunjan

2.7.0 :117 > puts "What's your name?"
What's your name?
 => nil 

2.7.0 :118 > name = gets.chomp (remove last character '\n')
gunjan?

2.7.0 :119 > "asdf?".chomp("?")
 => "asdf" 

--------------------------------------
Encoding
abc.force_encoding("UTF-8")

--------------------------------------
Counting character
2.7.0 :121 > str = "huhuuhuhuhuhuhuhh"

2.7.0 :122 > str.count("h")
 => 9 

2.7.0 :123 > str.count("a")
 => 0 

2.7.0 :124 > str.count("u")

