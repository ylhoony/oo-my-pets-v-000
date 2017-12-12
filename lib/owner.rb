class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
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

  def pets
    self.pets, :fishes, :dogs, :cats = Hash.new
    self.pets.[:fishes], self.pets.[:dogs], self.pets.[:cats] = []
    self.pets
    # self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish

  end

end
