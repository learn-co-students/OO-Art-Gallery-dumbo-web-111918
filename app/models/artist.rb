class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map { |painting| painting.gallery }
  end

  def cities
    # paintings.map do |painting|
    #   painting.gallery.city
    # end

    galleries.map { |gallery| gallery.city }

  end

  def create_painting(gallery, title, price)
    Painting.new(title, price, gallery, self)
  end

  def self.all
    @@all
  end
end
