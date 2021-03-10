# cli controller

class GroupmuseConcerts::CLI

  def call
    puts "Let's find a concert to stream!"
    get_concerts
    puts ""
    puts "Enter 1 to search for a composer"
    puts "Enter 2 to search for an instrument or ensemble"
    puts "Enter 3 to see a list of all the concerts"
    puts "Type 'exit' if you are finished"
    input = gets.strip
    if input == 3
      print_all_concerts
    end
    puts "pick a show!"
    input = gets.strip
    concert = GroupmuseConcerts::Concert.all[input.to_i-1]

    print_concert(concert)

    # while input != "exit"
      # get concerts
      # ask for search choice
      # display options
      # choose and diplay choice
    # end
    # goodbye
  end

  def get_concerts
    a = GroupmuseConcerts::Scraper.new
#binding.pry
    a.scrape_concerts
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
