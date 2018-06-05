class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  # def add_song(song)
  #   self.songs << song
  # end

  def songs(song) #keeps track of artist's songs
    self.songs << song
  end

  def save #adds the artist instance to the @@all class variable
    @@all << self
  end

  def self.find_or_create_by_name
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    self.all.detect { |artist| artist.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end

  def print_songs
    self.songs.each {|song| song.name}
  end


end
