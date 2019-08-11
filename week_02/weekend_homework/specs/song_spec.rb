require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../song')

class TestSong < MiniTest::Test

  def setup
    @song1 = Song.new('Living on a Prayer','Bon Jovi')
  end

  def test_get_song_title
    assert_equal('Living on a Prayer', @song1.title())
  end

  def test_get_artist
    assert_equal('Bon Jovi', @song1.artist())
  end


end
