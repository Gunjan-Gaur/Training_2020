class Person
  attr_accessor:name,:age,:trait
end

class Sportsman <Person
  attr_accessor:sports
end

sp = Sportsman.new

sp.age=20
sp.name="Jack"
sp.sports="Cricket"
puts sp.inspect

#-----------------------------------
class Animal
  attr_accessor:color,:name
  def identify
  	return "My name is #{name} and i am from #{self.class}"
  end
end	

class Tiger < Animal
  
  def initialize(name,color)
    @name = name
    @color = color
  end

  def speak
  	return "Grrrr.."
  end	
end

t = Tiger.new("Perl","red")
a = Animal.new
puts t.inspect
puts t.speak
puts t.identify

puts a.inspect
puts a.identify