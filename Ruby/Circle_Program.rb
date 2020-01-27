class Calculate
  @@pie = 3.14
  def parameter
  	return 2*@@pie*$r
  end

  def area
  	return @@pie*$r**2
  end
end	

object=Calculate.new
print "Enter radius of circle:-"
$r = gets.to_i
puts object.parameter
puts object.area