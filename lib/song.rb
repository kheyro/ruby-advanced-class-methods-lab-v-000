class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    song = self.new
    @@all << song
    song
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
  end

  def self.find_by_name(name)
    self.all.detect { |song| song.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end

  def self.destroy_all
    self.all.clear
  end

  def split_filename(filename)
    file = filename.split(/[-.]/).map(&:strip)
    file
  end

  def self.new_from_filename(filename)
    file = file.split_filename(filename)
    song = self.new
    song.name = file[1]
    song.artist_name = file.first
    song
  end

  def self.create_from_filename(filename)

  end
end
