Creating Arrays
---------------------------------
2.7.0 :007 > Array.new(3)
 => [nil, nil, nil] 

2.7.0 :008 > Array.new
 => [] 

2.7.0 :009 > Array.new(3,true)
 => [true, true, true] 

2.7.0 :010 > Array.new(4){Hash.new}
 => [{}, {}, {}, {}] 

2.7.0 :011 > Array.new(4){|i| i.to_s }
 => ["0", "1", "2", "3"] 

2.7.0 :013 > Array.new(4){|i| to_s }
 => ["main", "main", "main", "main"] 

2.7.0 :014 > Array.new(4){|i| 5.to_s }
 => ["5", "5", "5", "5"] 

2.7.0 :015 > Array.new(2){Array.new(3)}
 => [[nil, nil, nil], [nil, nil, nil]] 

2.7.0 :016 > Array({:a => "a",:b => "b"})
 => [[:a, "a"], [:b, "b"]] 

Accessing array elements
---------------------------------------- 
2.7.0 :018 > arr=[1,2,3,4,5,6,7,8,9,10]
2.7.0 :019 > arr[2]
 => 3 

2.7.0 :020 > arr[100]
 => nil 

2.7.0 :021 > arr[-3]
 => 8 

2.7.0 :023 >   
 => [3, 4, 5] 

2.7.0 :033 > arr.at(9)
 => 10 

2.7.0 :034 > arr = ['a','b','c','d']
2.7.0 :035 > arr.fetch(0)
 => "a" 

2.7.0 :039 > arr.first
 => "a" 

2.7.0 :040 > arr.last
 => "d" 

2.7.0 :041 > arr.take(2)
 => ["a", "b"] 

2.7.0 :042 > arr.drop(2)
 => ["c", "d"] 

Obtaining Information about the array
-------------------------------------------
2.7.0 :043 > arr.length
 => 4 

2.7.0 :044 > arr.count
 => 4 

2.7.0 :045 > arr.size
 => 4 

2.7.0 :046 > arr.empty?
 => false 

2.7.0 :047 > arr.include?('c')
 => true 

Adding elements to array
---------------------------------------
2.7.0 :051 > arr << 6
 => ["a", "b", "c", "d", "c", "f", 6] 

2.7.0 :052 > arr.unshift(0)
 => [0, "a", "b", "c", "d", "c", "f", 6] 

2.7.0 :053 > arr.insert(3,'Menu')
 => [0, "a", "b", "Menu", "c", "d", "c", "f", 6] 

2.7.0 :054 > arr.insert(3,'Menu','him')
 => [0, "a", "b", "Menu", "him", "Menu", "c", "d", "c", "f", 6] 

2.7.0 :055 > arr.push('l')
 => [0, "a", "b", "Menu", "him", "Menu", "c", "d", "c", "f", 6, "l"] 

Removing Itemns from an array
----------------------------------------
2.7.0 :071 > arr.pop
 => 6 

2.7.0 :064 > arr.push(nil)
 => ["a", "b", "him", "Menu", "c", "d", "c", "f", nil] 

2.7.0 :065 > arr.insert(3,nil)
 => ["a", "b", "him", nil, "Menu", "c", "d", "c", "f", nil] 

2.7.0 :066 > arr.compact
 => ["a", "b", "him", "Menu", "c", "d", "c", "f"] 

2.7.0 :067 > arr.insert(3,nil)
 => ["a", "b", "him", nil, nil, "Menu", "c", "d", "c", "f", nil] 

2.7.0 :068 > arr.compact!
 => ["a", "b", "him", "Menu", "c", "d", "c", "f"] 

2.7.0 :069 > arr.insert(3,'f','g')
 => ["a", "b", "him", "f", "g", "Menu", "c", "d", "c", "f"] 

2.7.0 :070 > arr.uniq
 => ["a", "b", "him", "f", "g", "Menu", "c", "d"] 

Iterating over array
---------------------------------------
2.7.0 :018 > fix = %w[mile jab hum tum]

2.7.0 :019 > mix = ""

2.7.0 :020 > fix.reverse_each {|make| mix += "#{make}"}

2.7.0 :022 > p str
 => " tumhumjabmile" 

2.7.0 :028 > arr = [1,2,3,4,5,6,7,8,9]

2.7.0 :029 > arr.map{|a| a**2 }
 => [1, 4, 9, 16, 25, 36, 49, 64, 81] 

2.7.0 :078 > arr.each{}
 => [1, 2, 3, 4, 5, 6, 7, 8, 9] 

2.7.0 :079 > arr.each{|a| print a -= 10, " " }
-9 -8 -7 -6 -5 -4 -3 -2 -1  => [1, 2, 3, 4, 5, 6, 7, 8, 9] 

Selecting items from array 
-----------------------------------------
While the destructive operations will modify the array they were called on, the non-destructive methods usually 
return a new array with the selected elements, but leave the original array unchanged.

	1.non-destructive
	2.7.0 :040 > arr=[1,2,3,4,5,6,7,8,9]

	2.7.0 :041 > arr.select{|a| a > 3}
 	 => [4, 5, 6, 7, 8, 9] 
	
	2.7.0 :042 > arr.reject{|a| a < 3}
	 => [3, 4, 5, 6, 7, 8, 9] 
	
	2.7.0 :043 > arr.drop_while{|a| a < 3}
	 => [3, 4, 5, 6, 7, 8, 9] 
	
	2.7.0 :044 > arr
	 => [1, 2, 3, 4, 5, 6, 7, 8, 9] 

	2.destructive
	2.7.0 :035 > arr.delete_if{|a| a < 4}
	 => [4, 5, 6, 7, 8, 9] 
	
	2.7.0 :036 > arr
	 => [4, 5, 6, 7, 8, 9] 
	
	2.7.0 :038 > arr.keep_if{|a| a < 4}
	 => [1, 2, 3] 
	
	2.7.0 :039 > arr
	 => [1, 2, 3] 

--------------------------------------------------
2.7.0 :045 > a = Array.new(2,Hash.new)

2.7.0 :046 > a[0]['pink'] = 'color'

2.7.0 :047 > p a
[{"pink"=>"color"}, {"pink"=>"color"}]
 => [{"pink"=>"color"}, {"pink"=>"color"}] 

As array stores same hash value,so to store multiple value then use:-

2.7.0 :048 > a = Array.new(2){Hash.new}

2.7.0 :049 > a[0]['color'] = 'pink'

2.7.0 :051 > p a
[{"color"=>"pink"}, {}]
 => [{"color"=>"pink"}, {}] 

---------------------------------------------------
public instance methods

ary & other_ary → new_aryclick
	[ 1, 1, 3, 5 ] & [ 3, 2, 1 ]               
	  => [ 1, 3 ]
	[ 'a', 'b', 'b', 'z' ] & [ 'a', 'b', 'c' ]   
	 => [ 'a', 'b' ]

ary * int → new_aryclick to toggle source
ary * str → new_string
	[ 1, 2, 3 ] * 3    
	  => [ 1, 2, 3, 1, 2, 3, 1, 2, 3 ]
	[ 1, 2, 3 ] * ","  
	 => "1,2,3"

ary + other_ary → new_ary
	[ 1, 2, 3 ] + [ 4, 5 ]    
	 => [ 1, 2, 3, 4, 5 ]

ary - other_ary → new_ary
	[ 1, 1, 2, 2, 3, 3, 4, 5 ] - [ 1, 2, 4 ]  
	 =>  [ 3, 3, 5 ]

ary << obj → ary
	[ 1, 2 ] << "c" << "d" << [ 3, 4 ]
     =>  [ 1, 2, "c", "d", [ 3, 4 ] ]	 

ary <=> other_ary → -1, 0, +1 or nil
	[ 1, 2, 3, 4, 5, 6 ] <=> [ 1, 2 ]            
	 => +1
	[ 1, 2 ]             <=> [ 1, :two ]         
	 => nil     

ary == other_ary → bool
	[ "a", "c" ]    == [ "a", "c", 7 ]     
	 => false
	[ "a", "c", 7 ] == [ "a", "c", 7 ]     
	 => true
	[ "a", "c", 7 ] == [ "a", "d", "f" ]   
	 => false	  

abbrev(pattern = nil)	 
	2.7.0 :065 > require 'abbrev'
	 => true 
	
	2.7.0 :066 > %w[gun jan].abbrev
	 => {"gun"=>"gun", "gu"=>"gun", "g"=>"gun", "jan"=>"jan", "ja"=>"jan", "j"=>"jan"} 

assoc(obj) → element_ary or nil
	s1 = [ "colors", "red", "blue", "green" ]
	s2 = [ "letters", "a", "b", "c" ]
	s3 = "foo"
	a  = [ s1, s2, s3 ]
	a.assoc("letters")  
	 => [ "letters", "a", "b", "c" ]
	a.assoc("foo")      
	 => nil

collect { |item| block } → new_ary
collect → Enumerator
	a = [ "a", "b", "c", "d" ]
	a.collect { |x| x + "!" }         
	 => ["a!", "b!", "c!", "d!"]

combination(n) { |c| block } → aryclick to toggle source
combination(n) → Enumerator
	a = [1, 2, 3, 4]
	a.combination(1).to_a  
	 => [[1],[2],[3],[4]]
	a.combination(2).to_a  
	 => [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
	a.combination(3).to_a  
	 => [[1,2,3],[1,2,4],[1,3,4],[2,3,4]]
	a.combination(4).to_a  
	 => [[1,2,3,4]]
	a.combination(0).to_a  
	 => [[]] # one combination of length 0
	a.combination(5).to_a  
	 => []   # no combinations of length 5	 

concat(other_ary1, other_ary2,...) → ary
	[ "a", "b" ].concat( ["c", "d"] ) 
	 => [ "a", "b", "c", "d" ]
	[ "a" ].concat( ["b"], ["c", "d"] ) 
	 => [ "a", "b", "c", "d" ]
	[ "a" ].concat 
	 => [ "a" ]

count → int
count(obj) → int
count { |item| block } → int
	ary = [1, 2, 4, 2]
	ary.count                  
	 => 4
	ary.count(2)               
	 => 2
	ary.count { |x| x%2 == 0 } 
	 => 3	 

cycle(n=nil) { |obj| block } → nil
cycle(n=nil) → Enumerator
	a = ["a", "b", "c"]
	a.cycle { |x| puts x }     # print, a, b, c, a, b, c,.. forever.
	a.cycle(2) { |x| puts x }  # print, a, b, c, a, b, c.

each_index { |index| block } → ary
each_index → Enumerator
	a = [ "a", "b", "c" ]
	a.each_index {|x| print x, " -- " }

	a.index("b")              
	 => 1
	a.index("z")              
	 => nil	

flatten → new_ary
flatten(level) → new_ary
	s = [ 1, 2, 3 ]           
	 => [1, 2, 3]
	t = [ 4, 5, 6, [7, 8] ]   
	 => [4, 5, 6, [7, 8]]
	a = [ s, t, 9, 10 ]       
	 => [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
	a.flatten                 
	 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]	 

to_s → string
	[ "a", "b", "c" ].to_s     
	  => "[\"a\", \"b\", \"c\"]"	 	 

max → objclick to toggle source
max { |a, b| block } → obj
max(n) → array
max(n) { |a, b| block } → array
	a = %w[albatross dog horse]
	a.max(2)                                  
	 => ["horse", "dog"]
	a.max(2) {|a, b| a.length <=> b.length }  
	 => ["albatross", "horse"]	  

transpose → new_ary
	a = [[1,2], [3,4], [5,6]]
	a.transpose   
	 => [[1, 3, 5], [2, 4, 6]]	 

ary | other_ary → new_aryclick to toggle source
	[ "a", "b", "c" ] | [ "c", "d", "a" ]    
	 => [ "a", "b", "c", "d" ]
