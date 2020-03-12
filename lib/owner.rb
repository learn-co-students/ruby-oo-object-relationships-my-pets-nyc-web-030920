class Owner
  # code goes here
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species="human")
    @name = name
    @species = species
    Owner.all << self
  end
  
  def self.all
    @@all
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.count
    Owner.all.count
  end
  
  def self.reset_all
    Owner.all.clear
  end
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    cats.each do |cat|
      cat.owner = nil
      cat.mood = "nervous"
    end
    
    dogs.each do |dog|
      dog.owner = nil
      dog.mood = "nervous"
    end
  end
  
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  
  
end