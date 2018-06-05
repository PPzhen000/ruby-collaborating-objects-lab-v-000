require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = Song.new
    song.artist = filename.split(" ")[0]
    song.title = filename.split(" ")[1]
    song
  end
end
