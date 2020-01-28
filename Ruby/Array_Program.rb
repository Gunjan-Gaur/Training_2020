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