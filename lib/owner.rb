class Owner
  # code goes here
  attr_reader :name, :species 
  @@all = []

  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self 
  end 
  def say_species 
    "I am a #{species}." 
  end 
  def buy_cat(name)
    return Cat.new(name, self)
  end 
  def buy_dog(name)
    return Dog.new(name, self)
  end 
  def cats 
    Cat.all.select do |cat| 
      cat.owner == self 
    end 
  end 
  def dogs 
    Dog.all.select do |dog| 
      dog.owner == self 
    end 
  end 
  def list_pets 
    return "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
  end 
  def feed_cats 
    self.cats.each do |cat| 
      cat.mood = "happy"
    end 
  end 
  def walk_dogs 
    self.dogs.each do |dog| 
      dog.mood = "happy"
    end 
  end 
  def sell_pets 
    self.cats.each do |cat| 
      cat.owner = nil 
      cat.mood = "nervous"
    end 
    self.dogs.each do |dog| 
      dog.owner = nil 
      dog.mood = "nervous"
    end 
  end 
  def self.all 
    @@all 
  end 
  def self.count 
    @@all.size 
  end 
  def self.reset_all
    @@all = []
  end 
end