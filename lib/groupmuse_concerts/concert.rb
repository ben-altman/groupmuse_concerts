class GroupmuseConcerts::Concert
  attr_accessor :name, :instruments, :day_time, :composers, :url

  @@all = []

  def initialize(name, day_time, composers, instruments, url)
    @name = name
    @instruments = instruments
    @day_time = day_time
    @composers = composers
    @url = "https://www.groupmuse.com" + url
    @@all << self 
  end

  # def initialize(student_hash)
  #     student_hash.each {|key, value| self.send(("#{key}="), value)}
  #     @@all << self
  #   end

  def self.all
    @@all
  end


end
