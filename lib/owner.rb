class Owner
  # code goes here

  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.count
  end
end
