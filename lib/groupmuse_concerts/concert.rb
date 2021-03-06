class GroupmuseConcerts::Concert
  attr_accessor :name, :ensemble, :day_time, :composers, :type, :url

  @@all = []

  def initialize


  def self.all
    @@all
  end

  def self.this_week
    #returns concerts streaming this week
  end

end
