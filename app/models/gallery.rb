class Gallery

  attr_reader :name, :city

  @@all =[]

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      self == painting.gallery
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.map { |artist| artist.name }
  end

  def self.all
    @@all
  end
end
