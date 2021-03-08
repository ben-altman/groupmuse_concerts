class GroupmuseConcerts::Concert
  attr_accessor :name, :instrumentation, :day_time, :composers, :type, :url

  @@all = []

  def initialize
    @name = name
    @instrumentation = instrumentation
    @day_time = day_time
    @composers = composers
    @type = type
    @url = "https://www.groupmuse.com/" + url
    @@all << self
  end

  # def initialize(student_hash)
  #     student_hash.each {|key, value| self.send(("#{key}="), value)}
  #     @@all << self
  #   end

  def self.all
    @@all
  end


#  def self.this_week
#    #returns concerts streaming this week
#  end

end
