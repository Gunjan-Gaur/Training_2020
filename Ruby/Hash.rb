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
Default
h = Hash.new("cat")                     
 => {}

h.default                               
 => "cat"

h.default(2)                            
 => "cat