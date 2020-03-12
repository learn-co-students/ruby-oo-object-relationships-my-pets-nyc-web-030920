require "pry"
class Owner
  attr_reader :species, :name
@@all=[]
  def initialize(name)
    @name = name
    @species = "human"
    Owner.all << self
  # code goes here
  end
  
  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    Owner.all.clear
  end

  def get_list(name)
    name.all
  end

  def cats
    get_list(Cat).select do |cat|
        cat.owner == self
    end
  end

  def dogs
    get_list(Dog).select do |cat|
        cat.owner == self
    end
  end

  def buy_cat(cat_name)
      Cat.new(cat_name, self)
  end
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
end

def walk_dogs
  self.dogs.map do |ele|
    if ele.owner ==self
      ele.mood = "happy"
    end
  end
end

def feed_cats
  self.cats.map do |ele|
    if ele.owner ==self
      ele.mood = "happy"
    end
  end
end

def sell_pets
  pets = self.cats + self.dogs
  pets.each do |pet|
    pet.owner = nil
    pet.mood= "nervous"
  end
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end
end