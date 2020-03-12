class Owner
  attr_reader :name, :species
  @@all=[]
  def initialize(name)
    @name = name 
    @species = "human"
    Owner.all << self 
  end 
  def say_species 
    "I am a #{self.species}."
  end 
  def self.all 
    @@all 
  end 
  def self.count
    @@all.length 
  end 
  
  def self.reset_all
    self.all.clear 
  end 
  
 

  # context 'Owner instance methods' do
  #   describe "#cats" do
  #     it "returnsa a collection of all the cats that belong to the owner" do
  #       cat_1 = Cat.new("Garfield", @owner)
  #       cat_2 = Cat.new("Fido", @owner)
  #       cat_3 = Cat.new("Whiskers", @owner)

  #       expect(@owner.cats[0]).to eq(cat_1)
  #       expect(@owner.cats[1]).to eq(cat_2)
  #       expect(@owner.cats[2]).to eq(cat_3)
  #       expect(@owner.cats.count).to eq(3)
  #     end
  #   end

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

  # describe "#buy_cat" do
  # it 'can buy a cat that is an instance of the Cat class' do
  #   expect(@owner.cats.count).to eq(0)

  #   @owner.buy_cat("Crookshanks")
  #   @owner.buy_cat("Whiskers")
  #   @owner.buy_cat("Garfield")

  #   @owner.cats.each do |cat|
  #     expect(cat).to be_a(Cat)
  #   end

  #   expect(@owner.cats.count).to eq(3)
  # end


  def buy_cat(name)
    Cat.new(name,self)
  end 

  def buy_dog(name)
    Dog.new(name,self)
  end 


  def walk_dogs
    self.dogs.each do |dog|
      dog.mood = "happy"
    end 
  end 

  def feed_cats
    self.cats.each do |cat|
      cat.mood = "happy"
    end 
  end 

  def sell_pets
    pets = self.cats + self.dogs
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end 
    # self.cats.each do |cat|
    #   cat.mood = "nervous"
    #   cat.owner = nil
    # end
    # self.dogs.each do |dog|
    #   dog.mood = "nervous"
    #   dog.owner = nil
    # end
  end 

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
  

end