class Menu
  attr_reader:length_quit
  
  def initialize(*menu_list)
    @menu_list = menu_list
    @length_quit = @menu_list.length  
  end 

  def get_menu_choice
  	
  	@menu_list.each_with_index do |item,index|
	  puts "#{index +1}.#{item}"  	
    end

   print "Please Place your order sir..!!"
   user_choice = gets.to_i
  
   return user_choice   
  end
end	

menu = Menu.new("Pizza","Burger","Sandwich","Juice","Quit")

while((choice = menu.get_menu_choice) != menu.length_quit)
	case choice
	when 1
		puts "Please Wait!! Your order for pizza has been placed..!!"
	when 2
		puts "Please Wait!! Your order for burger has been placed..!!"
	when 3
		puts "Please Wait!! Your order for Sandwich has been placed..!!"
	when 4
		puts "Please Wait!! Your order for Juice has been placed..!!"
	end				
end	