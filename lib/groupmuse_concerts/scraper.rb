class GroupmuseConcerts::Scraper

  def scrape_concerts
    doc = Nokogiri::HTML(open("https://www.groupmuse.com/"))
#binding.pry
    # begin with [4] - to bypass the list at the top
    concert = doc.css("div.card-content")

  end

# day_time = doc.css("div.card-content")[index].css("p").text
# name = doc.css("div.card-content")[index].css("a.event-card-link").text
# composers and instruments = doc.css("div.card-content")[index].css("li").text
# type = doc.css("div.online-labels").text
# url = "https://www.groupmuse.com" + doc.css("div.card-content").css("a/@href").text
end
