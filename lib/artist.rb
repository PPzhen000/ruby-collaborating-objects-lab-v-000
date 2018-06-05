class Artist

  attr_accessor :name

  @@all = []

  def initialize(artist_name)
    @name = artist_name
  end

  def add_song
    song = Song.new(name)
    # @@all << song if song.artist.name
  end

  def songs

  end

  def save
    artist = Artist.new
    @@all << self 
  end

  def self.find_or_create_by_name

  end

  def print_songs

  end


end
