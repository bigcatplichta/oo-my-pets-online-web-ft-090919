class Owner
  attr_accessor
  attr_reader :name, :species, :cats, :dogs 
  attr_writer
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end 
  
  def say_species
    return "I am a #{@species}."
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear 
  end 
  
  def buy_cat(name)
    cat = Cat.new(name, self)
  end 
  
  def buy_dog(name)
    dog = Dog.new(name, self)
  end 
  
  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end 
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end 
end