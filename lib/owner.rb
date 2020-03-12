class Owner
  @@all = []
  attr_accessor 
  attr_reader :species, :name
  def initialize(name, species = "human")
    @name = name
    @species = species
    Owner.all << self
  end

def say_species
  p "I am a #{@species}."
end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|cats| cats.owner == self}
  end

  def dogs
    Dog.all.select {|dogs| dogs.owner == self}
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end

  def walk_dogs
    dogs.map {|dog| dog.mood = "happy"}
  end

  def feed_cats
    cats.map {|cat| cat.mood = "happy"}
  end

  def sell_pets
    dogs.map{|dog| dog.mood = "nervous"
    dog.owner = nil}
    cats.map {|cat| cat.mood = "nervous"
    cat.owner = nil}
  end

  def list_pets
    p "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

end