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
      puts "  2. Remove a song"
      puts "  3. Display music catalog"
      puts "  4. Exit"
      puts "Which option would you like to do: "
      option = gets.chomp.to_i
      puts "~~~~"
      case option 
        when 1 
          add_song
        when 2 
          puts "huh"
        when 3
          display_catalog
        when 4
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

    def display_catalog
      puts "This is your current music catalog: "
      @songs.each do |song|
        puts song
    end
  end
end
