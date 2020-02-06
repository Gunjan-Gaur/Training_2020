2.7.0 :006 > s = "hello"
2.7.0 :008 > s.match?(/\d{3}/)
 => false 

2.7.0 :009 > a = "123"
2.7.0 :010 > a.match?(/\d{3}/)
 => true 

2.7.0 :011 > c = "1233445"
2.7.0 :012 > c.match?(/\d{3}/)
 => true 

2.7.0 :015 > string = "I have 20 choclates and 10 pens."
2.7.0 :016 > p string =~ /c/
10
 => 10 

2.7.0 :017 > p string =~ /C/
nil
 => nil 

2.7.0 :018 > p string =~ /C/i
10
 => 10 

2.7.0 :019 > p string =~ /C/i ? "Valid" : "Invalid"
"Valid"
 => "Valid" 

2.7.0 :020 > p string =~ /H/ ? "Valid" : "Invalid"
"Invalid"
 => "Invalid" 

2.7.0 :023 > p string.to_enum(:scan,/\d+/).map{Regexp.last_match}
[#<MatchData "20">, #<MatchData "10">]
 => [#<MatchData "20">, 

2.7.0 :024 > str = "123-234-5678"
2.7.0 :026 > str.match?(/\d\d\d.\d\d\d.\d\d\d\d/)
 => true 
 	