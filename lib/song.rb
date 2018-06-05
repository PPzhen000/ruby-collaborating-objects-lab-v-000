require 'pry'
class Song

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song = Song.new
    song.title = filename.split(" ")[1]
    song
  end 
end
