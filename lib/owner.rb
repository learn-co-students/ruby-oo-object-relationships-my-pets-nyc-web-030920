class Owner
  # code goes here
  @@all = []
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "human"
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
  Cat.all.select do |cat_instance|
    cat_instance.owner == self 
  end
  end

  def dogs
    Dog.all.select do |dog_instance|
      dog_instance.owner == self
    end
    end

    def buy_cat(name)
      Cat.new(name, self)
    end
     
    def buy_dog(name)
      Dog.new(name, self)
    end

    def walk_dogs
      dogs.each do |dog_instance|
        dog_instance.mood = "happy"
      end
      end

      def feed_cats
        cats.each do |cat_instance|
          cat_instance.mood = "happy"
        end
      end

      def sell_pets
        pets = dogs + cats 
        pets.each do |pet|
          pet.mood = "nervous"
          pet.owner = nil
          end
      end

      def list_pets
        "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
        end      
end
