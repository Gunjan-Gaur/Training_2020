puts 'Array Max Element'  
a=[1,2,3,8,4,5]
max = a[0]
for i in a
	puts i
  if i > max
    max=i
  end 
end  
puts max  