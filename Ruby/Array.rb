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
 
