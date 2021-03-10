class GroupmuseConcerts::Scraper

  def scrape_concerts
    doc = Nokogiri::HTML(open("https://www.groupmuse.com/"))
    # begin with [4] - to bypass the list at the top

        doc.css("div.card-content").drop(4).each do |c, index|
#binding.pry
          name = c.css("a.event-card-link").text.strip
          day_time = c.css("p").first.text.strip.gsub("\n\n"," ")
          if c.css("li:first-child").text.include?("Composers:")
            composers = c.css("li:first-child").text.split(":")[1].strip
          else
            composers = nil
          end
          if composers && c.css("li:nth-child(2)").text.include?("Instruments:")
            instruments = c.css("li:nth-child(2)").text.split(":")[1].strip
          elsif c.css("li:first-child").text.include?("Instruments:")
            instruments = c.css("li:first-child").text
          else
            instruments = nil
          end
          url = c.css("a/@href").text.split("-").first

          GroupmuseConcerts::Concert.new(name, day_time, composers, instruments, url)
        end
#binding.pry
  end

# day_time = doc.css("div.card-content")[index].css("p").text
# name = doc.css("div.card-content")[index].css("a.event-card-link").text
# composers and instruments = doc.css("div.card-content")[index].css("li").text
# type = doc.css("div.online-labels").text
# url = "https://www.groupmuse.com" + doc.css("div.card-content").css("a/@href").text
end
