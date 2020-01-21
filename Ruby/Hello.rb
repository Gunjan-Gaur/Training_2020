puts "Hello"

print <<EOF
  HEY!FIRST LINE
  This is used for multiple line text.
EOF
#----------------------------------
#Exercise on Hash
movies={
	:gaabar=>2016,
	:Tarzan=>2001,
	:The_Lion=>9090,
}
puts movies[:gaabar]
puts movies[:Tarzan]
puts movies[:The_Lion]

#-----------------------------------
#Excercise on array
puts "Arrays:-"
year=[2011,2012,2013,2014]
puts year[0]
puts year[1]
puts year[2]
puts year[3]
#----------------------------------
a=5
3.times do |n|
	a=3
end
puts a	
#-----------------------------------
arr=[1,2,3]
for i in arr do
	a=5
end

puts a	