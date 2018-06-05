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
    song = Song.new(filename.chomp(".mp3").split(" - ")[1])
    song.artist = filename.chomp(".mp3").split(" - ")[0]
    song
  end
end
