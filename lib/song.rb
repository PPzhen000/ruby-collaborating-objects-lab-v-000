require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    filename = filename.chomp(".mp3").split(" - ")
    song = Song.new(filename[0])
    song.artist = filename[1]
    song.artist_name=(filename[0])
    #binding.pry
    song
  end

  def name
    @name
  end

end
