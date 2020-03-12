class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name =  name
    @species =   "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
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
    Cat.all.select{|cat| cat.owner == self}
  end

  

# review concept 

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end