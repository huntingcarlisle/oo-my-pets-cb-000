class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
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
    return "I am a #{@species}."
  end
  
  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(cat_name)
    new_pet = Cat.new(cat_name)
    @pets[:cats] << new_pet
  end
  
  def buy_dog(dog_name)
    new_pet = Dog.new(dog_name)
    @pets[:dogs] << new_pet
  end
    
end