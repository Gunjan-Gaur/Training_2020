num=123454321
  rev=0
  rem=0
  original = num
  while num != 0
  	rem = num % 10
  	rev = rev * 10 + rem
  	num /= 10
  end
  if original==rev
	puts "#{original} is palindrome"  	
  else
  	puts "#{original} is not palindrome"
  end