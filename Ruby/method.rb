[1,2,3].each do |num|
  puts num
end
#-------------------------
a=[1,2,3]
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
mutate(a)
p "mutate method: #{a}"
#---------------------------
def greeting(name)
  puts name
  "I am " + name + " of Beryls."
end  	
puts greeting("Intern")
#------------------------------
def multiply(a,b)
  return a+b
  a*b
end
puts multiply(3,4)  	
#-------------------------------
def scream(words)
  words = words + "!!!!"
  puts words
end
scream("Yippeee")
#---------------------------------
#Exercise flow control
def upper(string)
  if string.length>10
    string.upcase
  else
    string 
  end
     
end	

puts upper("hey!!")
puts upper("kbckbdcbbcs")
#---------------------------------