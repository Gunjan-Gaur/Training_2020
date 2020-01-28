puts "Dividing array according to even and odd:-"
arr = ["1","2","3","4","5"]
x = arr.length
arr.each do
  if(arr.length%2 == 0)
    print h1 = arr[0...(arr.length/2)]
    puts
    print h2 = arr[((arr.length/2))..-1]
    puts
    break
  else
  	print h1 = arr[0...(arr.length/2)]
  	puts
    print h2 = arr[((arr.length/2))..-1]
    puts
    break
  end	
end	

#Amstrong Number
puts "Amstrong Number:-"
a = gets.chomp.to_i
temp=0,x=a,sum=0
while x!=0
  temp = x%10
  sum = sum + (temp*temp*temp)
  x /= 10
end  

if sum == a
  puts "A"
else
  puts "NA"
end

#Sort according to length
puts "Sort according to length:-"
arr = ["hudhu","jidcnb","324","gyhu","der"]
puts arr.sort_by(&:length)

#Pick Random Number from array
puts "Pick Random Number from array"
arr1 = [1,7,90,45,42,76]
puts arr1
puts "2 random Number from array"
puts arr1.sample(2)
puts "3 random Number from array"
puts arr1.sample(3)

#Sum of array
puts "Sum of array"
arr2 = [10,20,30,40,50]
puts arr2.sum                           #Method 1
puts arr2.inject(0){|sum,x| sum + x}    #method 2 
puts arr2.reduce(:+)                    #method 3 inject and reduce are enums

#Remove Duplicate elem. from array
puts "Remove Duplicate elem. from array"
arr = [1,3,2,3,4,54,5,64,5,7,4,2,2,1]
puts arr.uniq.inspect

#Check any of the first and last element is same
puts "Check any of the first and last element is same:-"
def meth(a1,a2)
  return ((a1.first == a2.first) || (a1.last == a2.last)) 
end  
puts meth([1,2,3],[2,4,3])
puts meth([1,2,3],[2,4,3,4,5])
puts meth([1,2,3],[1,4,9])

#Remove blank element from the array
puts "Remove blank element from the array:-"
arr = ["hus","djosc","","hdue"]
puts arr.reject{|a| a.empty?}.inspect

#Compute sum of elements where length > 2
def check_array(nums)
   return (nums[0] + nums[1] + nums[2])
end

print check_array([1, 2, 5]),"\n" 
print check_array([1, 2, 3]),"\n" 

#Split delimited string
puts "Split delimited string:-"
puts arr = "ufh ,jidjc, kdsc"
puts s = "1,2,3,4,5"
puts arr.split(",").inspect
puts s.split(",").map{|a| a.to_i}.inspect