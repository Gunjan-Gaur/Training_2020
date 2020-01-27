def check_array(nums)
  puts ((nums.first == 7  || nums.last == 7 ) && nums.length>0) 
end
puts check_array([1,2,7])
puts check_array([7,2,7,98])
puts check_array([1,2,7,89])

