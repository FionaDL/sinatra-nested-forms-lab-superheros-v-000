class Superhero
  attr_accessor :name, :power, :biography
  @@all = []

    def initialize(superhero)
      @name = superhero[:name]
      @power = superhero[:power]
      @biography = superhero[:biography]
      @@all << self
    end

    def self.all
      @@all
    end
end