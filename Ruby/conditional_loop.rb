i=0
loop do 
  i += 2
  puts i
  if i==10
    break
  end  	
end
#---------------------
x=gets.chomp.to_i
while x>=0
  puts x
  x-=1
end  
puts "Complete"
#-------------------
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Complete"