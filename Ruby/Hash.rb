Hash
--------------------------------------
Implicit defination and with new keyword
2.7.0 :006 > Hash["a" => 45,"b" =>56]
 => {"a"=>45, "b"=>56} 

2.7.0 :007 > h = Hash.new("Living lif
e")

2.7.0 :008 > print h
{} => nil 

2.7.0 :009 > h['a'] = 90

2.7.0 :010 > h['b'] = 78

2.7.0 :011 > h['a']
 => 90 

2.7.0 :012 > h['b']
 => 78 

2.7.0 :013 > h['d']
 => "Living life" 

2.7.0 :014 > h.keys
 => ["a", "b"] 

-------------------------------------------
< , >
h1 = {a:1, b:2}
h2 = {a:1, b:2, c:3}

h1 < h2    
 => true

h2 < h1    
 => false

h1 < h1    
 => false

h1 > h2    
 => false
h2 > h1     
 => true 

-------------------------------------------
<= , >=
h1 <= h2   
 => true

h2 <= h1   
 => false

h1 >= h2   
 => false

h2 >= h1   
 => true

------------------------------------------
==
h1 = { "a" => 1, "c" => 2 }
h2 = { 7 => 35, "c" => 2, "a" => 1 }
h3 = { "a" => 1, "c" => 2, 7 => 35 }

h1 == h2   
 => false

h2 == h3   
 => true

-----------------------------------------
hsh[key] → value
h = { "a" => 100, "b" => 200 }

h["a"]   
 => 100

h["c"]   
 => nil

----------------------------------------
Store
h.store("d", 42) 
 => 42

h   
 => {"a"=>9, "b"=>200, "c"=>4, "d"=>42}

a = "a"
b = "b".freeze
h = { a => 100, b => 200 }
h.key(100).equal? a 
 => false
h.key(200).equal? b 
 => true

----------------------------------------
any?
[nil, true, 99].any?(Integer)                     
 => true

[nil, true, 99].any?                              
 => true

---------------------------------------- 
assoc(obj) → an_array or nil
h = {"letitbe"  => ["a", "b", "c"],
     "main" => ["d", "e", "f" ]}

h.assoc("main")  
 => ["main", ["d", "e", "f"]]

h.assoc("ruby")      
 => nil

---------------------------------------
Compact
h = { a: 1, b: false, c: nil }

h.compact     
 => { a: 1, b: false }

h             
 => { a: 1, b: false, c: nil }

-------------------------------------
compare_by_identity → hsh
h1.compare_by_identity
h1.compare_by_identity? 
 => true

-------------------------------------
Delete
h = { "a" => 100, "b" => 200 }

h.delete("a")                              
 => 100

h.delete("z") { |el| "#{el} not found" }   
 => "z not found"

------------------------------------
delete_if
h.delete_if {|key, value| key >= "b" }   
=> {"a"=>100}

-----------------------------------
dig
h = { a: {ab: {abc: 1}}}

h.dig(:a, :ab, :abc)     
 => 1

h.dig(:a, :bs, :lk)     
 => nil

-------------------------------------
each_key

h = { "a" => 100, "b" => 200 }
h.each_key {|key| puts key }
 =>a
   b

------------------------------------
each
h = { "a" => 100, "b" => 200 }
h.each {|key, value| puts "#{key} is #{value}" }
 => a is 100
    b is 200

-------------------------------------
each_value
h.each_value {|value| puts value }    
 =>100
   200

-------------------------------------
fetch
h.fetch("a")                            
 => 100

h.fetch("z", "go fish")                 
 => "go fish"    

------------------------------------
fetch_values
h = { "a" => "100", "b" => "200" }
h.fetch_values("a", "b")                   
 => ["100", "200"]

h.fetch_values("cow", "bird")                  
  KeyError

-------------------------------------
flatten
a =  {1=> "one", 2 => [2,"two"], 3 => "three"}

a.flatten    
 => [1, "one", 2, [2, "two"], 3, "three"]

a.flatten(2) 
 => [1, "one", 2, 2, "two", 3, "three"]  

-------------------------------------
has_key?
h = { "a" => 100, "b" => 200 }

h.has_key?("a")   
 => true

h.has_key?("z")   
 => false

------------------------------------
value?
h.value?(100)   
 => true
h.value?(999)   
 => false
-------------------------------------
Default
h = Hash.new("cat")                     
 => {}

h.default                               
 => "cat"

h.default(2)                            
 => "cat

 