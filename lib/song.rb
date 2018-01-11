class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
  end

  def self.create
    song = self.new
    # song.name = name
    # song.artist_name = artist_name
    @@all << song
    song
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    song = self.new
  end

  def self.create_by_name(name)
    song = self.new
    song.artist_name = name
  end
end
