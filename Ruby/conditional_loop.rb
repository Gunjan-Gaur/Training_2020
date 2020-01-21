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
#-----------------------
x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Complete"
#------------------------
x=0
while x<=10
  if x==3
  	x+=1
  	next
  	puts "Gunjan"
  elsif x.odd?
    puts x
  end
  x+=1
end    	
#--------------------------
names=['1','2','3']

names.each{puts names}