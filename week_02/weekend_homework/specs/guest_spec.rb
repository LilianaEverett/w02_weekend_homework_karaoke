require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../guest')
require_relative('../song')

class TestGuest < MiniTest::Test

  def setup
    @song1 = Song.new('Living on a Prayer','Bon Jovi')
    @guest1 = Guest.new('Liliana', @song1)

  end

  def test_get_name
    assert_equal('Liliana', @guest1.name())
  end

  def test_get_favorite_songs
    assert_equal('Living on a Prayer', @guest1.fav_songs.title)
  end


end
