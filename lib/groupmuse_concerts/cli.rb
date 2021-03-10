# cli controller

class GroupmuseConcerts::CLI

  def call
    puts "Let's find a concert to stream!"
    get_concerts
    print_all_concerts
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
    puts ""
    puts "#{concert.name}"
    puts ""
    puts "Date and time:      #{concert.day_time}"
    puts "Instruments:        #{concert.instruments}"
    puts "Composers:          #{concert.composers}"
    puts "URL:                #{concert.url}"
    puts ""
    puts "----------------------"
  end

  def goodbye
    puts "Enjoy your concert and thank you for supporting artists!"
  end
end
