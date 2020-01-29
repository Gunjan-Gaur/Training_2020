Pratice
--------------------------------------
a = ["hey","like",6,7,"sum"]
b = [1,2,3,4,5]
c = a.concat(b)
c.insert(4,"Gunjan")
c.each_with_index do |x,y| 
	puts "#{y}=""#{x}"
end
arr = ["tyu","jim","lok"]
rev = " "
arr.reverse_each{|hit| rev += "#{hit}"}
print rev
print arr
arr = [1,2,3,4,5]
#puts arr.select {|a| a>3 }
#puts arr.collect {|m| m.to_s + "!"}
puts arr <<78 << 56 
max = arr[0]
arr.each do |maximum|
	if(max<maximum)
		max = maximum
	end
end	
puts max	
puts c.first(4)
puts "------A-----"
puts a
puts "------B-----"
puts b
str = " xmxhuixxx  hum"
puts str.include?"x"
puts str.rjust(9,"0")
puts str.squeeze
puts str.tr("","g")
print str.partition("x")
print str.rpartition("x")
mig = [1,2,3,4,7,5]
print mig.map{|a| a**2}
str = "a b c d"
c = str.split
print c

fruits = {
		  1 => "Apple",
		  2 => "Banana",
          3 => "Guava"
         }

s = fruits[2]
puts fruits.keys.inspect
puts fruits.values.inspect
fruits.each{|k,v| puts "key:#{k},value:#{v}"}
fruits.each_key{|k| puts "key:#{k}"}
print fruits.to_a

 
def check_array(nums)
  puts ((nums.first == 7  || nums.last == 7 ) && nums.length>0) 
end
puts check_array([1,2,7])
puts check_array([7,2,7,98])
puts check_array([1,2,7,89])

-----------------------------------
h = {"a"=>"1" , "b"=>"2", "c"=>"3"}
x = h.values.inspect
$sum = 0 
x.each do |val|
  $sum += val
end

@y=0
h.each do |vary,v|
  @y = @y + v.to_i
end	
puts @y

------------------------------------
h.key(h.map{|k,v| v.to_i}.max.to_s)
puts h.map{|k,v| v.to_i}.max

@max=h["a"]
h.each do |k,v|
	if(@max < v)
	  @max=v
	end	
end
puts @max
=end


----------------------------------------------
h = {"a"=>"2" , "b"=>"4", "c"=>"1","d"=> "5"}
puts h.map{|k,v| v.to_i}.sort
print h.key(h.map{|k,v| v.to_i}.sort)
h.each {|k,v| print "#{k}=>"v.to_i}.sort
print h.sort_by{|k,v|v.to_i}.to_h
print h.sort_by{|k,v|v.to_i}.to_h.map{|k,v| k}
