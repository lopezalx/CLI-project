require_relative "song"

class Catalog 
  def initialize
    @songs = []
  end

  def run
    loop do
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts " -Music Catalog- "
      puts "  1. Add a song"
      puts "  2. Disply by artist"
      puts "  3. Display by genre"
      puts "  4. Display full music catalog"
      puts "  5. Exit"
      puts "Which option would you like to do: "
      option = gets.chomp.to_i
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      case option 
        when 1 
          add_song
        when 2 
          display_by_artist
        when 3
          display_by_genre
        when 4
          display_catalog
        when 5
          puts "Have a nice day, bye!"
          break
        else 
          puts "That is not an option, please pick a number from the provided list."
        end
      end
    end

    def add_song
      print "What's the song name: "
      title = gets.chomp
      print "Who sings this song: "
      artist = gets.chomp
      print "what genre of music is this song: "
      genre = gets.chomp
      @songs << Song.new(title,artist,genre)
      puts "You added this song to the catalog!"
    end

    def display_by_genre
      puts "What genre are you looking for: "
          genre = gets.chomp
          genre_songs = @songs.select {|category| category.genre == genre }
          genre_songs.each do |song|
            puts song
                           end
    end 

    def display_by_artist
      puts "What artist are you looking for: "
          artist = gets.chomp
          artist_songs = @songs.select {|category| category.artist == artist }
          artist_songs.each do |song|
            puts song
                           end
    end 

    def display_catalog
      puts "This is your current music catalog: "
      @songs.each do |song|
        puts song
    end
  end
end
