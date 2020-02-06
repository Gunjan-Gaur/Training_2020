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

2.7.0 :027 > str.match?(/\d{3}.\d{3}.\d{4}/)
 => true 

2.7.0 :028 > spy = "gunjangaur04@gmail.com"
2.7.0 :029 > spy.match?("[a-zA-Z0-9.]+@[a-zA-Z]+\.[a-zA-Z.]+")
 => true 

2.7.0 :030 > sy = "gunjan.gaur04@berylsystems.com"
2.7.0 :031 > sy.match?("[a-zA-Z0-9.]+@[a-zA-Z]+\.[a-zA-Z.]+")
 => true 

2.7.0 :032 > sy = "gunjan_gaur.gaur_@gmail.com"
2.7.0 :033 > sy.match?("[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z.]+")
 => true 
2.7.0 :034 > sy = "gunjan_gaur.gaur"
2.7.0 :035 > sy.match?("[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z.]+")
 => false 

https://www.example.com

http://www.example.com

http://blog.example.com

http://www.example.com/product

http://www.example.com/products?id=1&page=2

http://www.example.com&up

http://255.255.255.255

www.example.com

example.com

255.255.255.255

http://invalid.com/perl.cgi?key= | http://web-site.com/cgi-bin/perl.cgi?key1=value1&key2

http://www.site.com:8008 	


Common Regexp:-(https?://|\w+)+(\w+.{1}|:\w+|&\w+|/|[0-9])+
