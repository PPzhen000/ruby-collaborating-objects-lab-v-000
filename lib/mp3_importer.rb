require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(file_path)
    @path = file_path #@path = "./spec/fixtures/mp3s"
  end

  def files
    @files = []
    Dir.glob("#{path}/*.mp3").collect do |f|
      @files << f.gsub("#{path}/*.mp3")
    end
  end

  def import

  end

end
