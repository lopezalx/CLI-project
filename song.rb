class Song 
  attr_accessor :title, :artist, :genre

  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
  end

  def to_s
    "Song: #{@title}, Artist: #{@artist}, Genre: #{@genre}"
  end
end
