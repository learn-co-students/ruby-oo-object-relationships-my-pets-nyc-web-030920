class Dog
    attr_reader :name
    attr_accessor :mood
    @@dogs = []
    def initialize(name,owner)
      @name = name
      @owner = owner
      @mood = 'nervous'
      Dog.all << self
    end
    def owner=(owner)
      @owner = owner
    end
    def owner
      @owner
    end
  def self.all
    @@dogs
  end
end