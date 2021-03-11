# cli controller

class GroupmuseConcerts::CLI

  def call
    puts "Stuck at home, missing music? Let's find a concert to stream!"
    menu
  end

  def menu
    get_concerts

    input = nil

    puts ""
    puts "Enter 1 to search for a composer"
    puts "Enter 2 to search for an instrument or ensemble"
    puts "Enter 3 to see a list of all the concerts"
    puts "Type 'exit' if you are finished"

    input = gets.strip

    case input
    when "1"
      puts "Enter the last name of your favorite composer:"
      search_composer
    when "2"
      search_instrument
    when "3"
      print_all_concerts
      select_from_all
      puts "Search for another concert? Type Y or N"
      input = gets.strip.downcase
      input == "y" ? menu : goodbye
    when "exit"
      goodbye
    else
      puts "I do not understand your choice. Type exit or try again."
    end
  end

  def get_concerts
    a = GroupmuseConcerts::Scraper.new
    a.scrape_concerts
  end

  def select_from_all
    puts "Choose a concert to see details or type 'exit'!"
    input = gets.strip
    if input != "exit"
      concert = GroupmuseConcerts::Concert.all[input.to_i-1]
      print_concert(concert)
    else
      goodbye
    end
  end

  def search_composer
    input = gets.strip
    subset = GroupmuseConcerts::Concert.all.select do |c|
#  binding.pry
      c.composers != nil && (c.composers.include? input)
    end
    if subset[0] != nil
        print_subset(subset)
    else
      puts "It looks like no concerts feature #{input}. Try again?"
      menu
    end
  end

  def search_instrument

  end

  def print_subset(subset)
    subset.each.with_index(1) do |c, index|
      puts "#{index}. #{c.name}"
    end
  end

  def select_from_subset
    
  end

  def print_all_concerts
    GroupmuseConcerts::Concert.all.each.with_index(1) do |c, index|
      puts "#{index}. #{c.name}"
    end
  end

  def print_concert(concert)
    puts "__________________________________________________________"
    puts ""
    puts "#{concert.name}"
    puts ""
    puts "Date and time:      #{concert.day_time}"
    puts "Instruments:        #{concert.instruments}"
    puts "Composers:          #{concert.composers}"
    puts "URL:                #{concert.url}"
    puts "__________________________________________________________"
  end

  def goodbye
    puts "Enjoy your concert and thank you for supporting artists!"
  end

end
