class Dog
  attr_reader :name
  attr_accessor :mood, :owner
@@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @@all << self
    @mood = "nervous"
  end
  
  def self.all
  @@all 
  end

  def mood= (mood)
    @mood = mood
  end


end