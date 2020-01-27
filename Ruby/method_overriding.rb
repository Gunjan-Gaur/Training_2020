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

