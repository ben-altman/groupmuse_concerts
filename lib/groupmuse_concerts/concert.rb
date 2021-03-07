class GroupmuseConcerts::Concert
  attr_accessor :name, :ensemble, :day_time, :composers, :type, :url

  @@all = []

  def initialize
    @name = name
    @ensemble = ensemble
    @day_time = day_time
    @composers = []
    @type = type
    @url = "https://www.groupmuse.com/" + url
  end

  def self.all
    @@all
  end


#  def self.this_week
#    #returns concerts streaming this week
#  end

end
