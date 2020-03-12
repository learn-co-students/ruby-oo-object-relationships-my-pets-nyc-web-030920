require 'pry'
class Owner
  attr_reader :name
  attr_writer :owner
  @@all = []
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end
  def species
    @species
  end
  def say_species
    "I am a #{@species}."
  end
  def self.all
    @@all
  end
  def self.count
    self.all.count
  end
  def self.reset_all
    self.all.clear
  end
  def cats
    Cat.all.select do |cats|
      cats.owner == self
    end
  end
  def dogs
    Dog.all.select do |dogs|
      dogs.owner == self
    end
  end
  def buy_cat(cat)
    Cat.new(cat,self)
  end
  def buy_dog(dog)
    Dog.new(dog,self)
  end
  def walk_dogs
    self.dogs.each { |dog| dog.mood = "happy" }
  end

  def feed_cats
    self.cats.each { |cat| cat.mood = "happy" }
    binding.pry
  end

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
