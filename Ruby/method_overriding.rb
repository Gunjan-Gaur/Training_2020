class ParentArea
  
  def initialize(w,h)
  	@width = w 
  	@height = h
  end
  
  def getArea
  	return "Area from Parent class is #{@width * @height}"
  end

end	

class ChildArea < ParentArea
  def getArea
  	puts super()
  	return "Area from child class is #{@width * @height}"
  end

end

co = ChildArea.new(10,20)
puts co.getArea	

#------Operator Overloading---------------
class Animal
  attr_accessor:name,:color

  def initialize(name,color)
  	@name = name
  	@color = color
  end

  def +(other_object)
  	return Animal.new("#{self.name}#{other_object.name}","#{self.color}#{other_object.color}") 
  end
end

class Zebra < Animal

end	

a = Zebra.new("bunny","black")
b = Zebra.new("lily","gray")
puts (a+b).inspect
