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
#---------------------------
puts '--------------------------'
puts 'Max of 3 numbers'
a=gets.chomp.to_i
b=gets.chomp.to_i
c=gets.chomp.to_i
if a>b && a>c
  puts 'a is greatest'
elsif b>a && b>c
  puts 'b is greatest'
elsif c>a && c>b
  puts 'c is greatest'  	
end  		  	
  	  