class GroupmuseConcerts::Scraper

  def scrape_concerts
    doc = Nokogiri::HTML(open("https://www.groupmuse.com/"))
    # begin with [4] - to bypass the list at the top

        doc.css("div.card-content").each do |c, index|
binding.pry
          name = c.css("a.event-card-link").text.strip
          day_time = c.css("p").text.strip
          composers = c.css("li").text
          instrumentation = c.css("li").text
          url = c.css("a/@href").text
          type = nil
          GroupmuseConcerts::Concert.new(name, day_time, composers, instrumentation, url, type)
        end

  end

# day_time = doc.css("div.card-content")[index].css("p").text
# name = doc.css("div.card-content")[index].css("a.event-card-link").text
# composers and instruments = doc.css("div.card-content")[index].css("li").text
# type = doc.css("div.online-labels").text
# url = "https://www.groupmuse.com" + doc.css("div.card-content").css("a/@href").text
end
