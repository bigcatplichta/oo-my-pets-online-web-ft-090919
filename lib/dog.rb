class Dog
  attr_accessor :owner, :mood 
  attr_reader :name
  attr_writer
  @@all = []
  
  def initialize(name, owner)
    @name = name 
    @owner = owner 
    @mood = "nervous"
    @@all << self 
    @owner.dogs << self 
  end 
  
  def self.all 
    @@all
  end 
  
end