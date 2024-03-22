require 'minitest/autorun'
require './song'

class SongOutputTest < Minitest::Test
  def test_song
    music = Song.new("Evergreen", "omar", "pop")
    expected_output = 'Song: Evergreen, Artist: omar, Genre: pop'
    assert_equal expected_output, music.to_s, "Display method failed"
  end
end
