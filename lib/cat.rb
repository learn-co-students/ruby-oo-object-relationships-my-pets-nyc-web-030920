class Cat
  attr_reader :name
  attr_accessor :mood
  @@cats = []
  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    Cat.all << self
  end
  def owner=(owner)
    @owner = owner
  end
  def owner
    @owner
  end
def self.all
  @@cats
end
end

