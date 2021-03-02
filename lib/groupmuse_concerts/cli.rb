# cli controller

class GroupmuseConcerts::CLI

  def call
#binding.pry
    puts "Let's find a concert to stream!"
    input = nil
    while input != "exit"
      get concerts
      ask for search choice
      display options
      choose and diplay choice
    end
    goodbye
  end

  def goodbye
    puts "Enjoy your concert and thank you for supporting artists!"
  end
  
end
