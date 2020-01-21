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


