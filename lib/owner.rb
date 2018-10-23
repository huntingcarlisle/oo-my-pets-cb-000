class Owner
  # code goes here
  attr_accessor
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
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
  
  def say_species
    puts "I am a #{@species}."
  end
    
end