class Owner
  # code goes here
  attr_accessor
  @@all = []
  
  def initialize
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def self.count
    return @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
    
end