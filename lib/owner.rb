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
    self.pets.fishes = fish
  end

  def buy_dog(dog_name)

  end

  def buy_cat(fish_name)

  end

  def list_pets

  end

end
