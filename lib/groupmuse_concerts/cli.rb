# cli controller

class GroupmuseConcerts::CLI

  def call
binding.pry
    puts "Let's find a concert to stream!"
    input = nil
    scrape_concerts
    # while input != "exit"
      # get concerts
      # ask for search choice
      # display options
      # choose and diplay choice
    # end
    # goodbye
  end

  def scrape_concerts
    GroupmuseConcerts::Scraper.new

  end

  def print_all_concerts
    GroupmuseConcerts::Concert.all.each_with_index(1) do |c|
      puts "#{index}. #{c.name}"
  end

  def print_concert(concert)
    puts ""
    puts "#{concert.name}"
    puts ""
    puts "#{concert.intro_quote}"
    puts "Date and time:      #{concert.day_time}"
    puts "Instrumentation:    #{concert.ensemble}"
    puts "Composers:          #{concert.composers}"
    puts "Type:               #{concert.type}"
    puts "URL:                #{concert.url}"
  end

  def goodbye
    puts "Enjoy your concert and thank you for supporting artists!"
  end

end
