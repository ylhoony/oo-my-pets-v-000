class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species, :pets

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  # def pets
  #   self.pets = Hash
  #   [:fishes => [], :dogs => [], :cats => []]
  # end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    fish.owner = self
    self.pets[:fishes] << fish
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    dog.owner = self
    self.pets[:dogs] << dog
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    cat.owner = self
    self.pets[:cats] << cat
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_dogs
    self.pets[:cats].each do |cat|
      dog.mood = "happy"
    end
  end

  def list_pets

  end

end
