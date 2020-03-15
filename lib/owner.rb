require "pry"

class Owner
  attr_reader :name, :species
  attr_accessor :dog, :cat, :mood
  @@all = []
  def initialize(name)
    @name = name
    @cat = cat
    @dog = dog
    @species = "human"
    @@all << self
  end
  
def buy_cat(name)
Cat.new(name, self)
end

def buy_dog(name)
Dog.new(name, self)
end

def walk_dogs
Dog.all.map do |dog|
dog.owner == self
dog.mood = "happy"
end
end

def self.all
  @@all
end

def say_species
  "I am a #{@species}."
end

def self.count
  self.all.count
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


def feed_cats
    Cat.all.map do |cat|
    cat.owner == self
    cat.mood = "happy"
    end
end

def sell_pets
dogs.each do |dog|
  dog.owner = nil 
dog.mood = "nervous"
end
cats.each do |cat|
  cat.owner = nil
  cat.mood = "nervous"
end
end


def list_pets
 "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
end

def self.reset_all
self.all.clear
end




end