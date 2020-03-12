class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    Owner.all << self
  end

  def say_species
    say = "I am a #{@species}."
    say
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    all_cats = []
    Cat.all.each do |c|
      if c.owner == self
        all_cats << c
        end
      end
      all_cats
  end

  def dogs
    all_dogs = []
    Dog.all.each do |d|
      if d.owner == self
        all_dogs << d
        end
      end
      all_dogs
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    dogs.each {|d| d.mood = "happy"}
  end

  def feed_cats
    cats.each {|c| c.mood = "happy"}
  end

  def sell_pets
    pets = self.dogs + self.cats 
    pets.each do |p|
      p.mood = "nervous"
      p.owner = nil
    end
  end

  def list_pets
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

end