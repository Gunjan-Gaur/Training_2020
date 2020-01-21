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
