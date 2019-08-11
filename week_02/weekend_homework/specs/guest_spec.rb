require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../guest')
require_relative('../song')

class TestGuest < MiniTest::Test

  def setup
    @song1 = Song.new('Living on a Prayer','Bon Jovi')
    @guest1 = Guest.new('Liliana', @song1, 100)


  end

  def test_get_name
    assert_equal('Liliana', @guest1.name())
  end

  def test_get_favorite_songs
    assert_equal('Living on a Prayer', @guest1.fav_songs.title())
  end

  def test_get_wallet_amount
    assert_equal(100, @guest1.wallet())
  end

  def test_pay_amount
    assert_equal(80, @guest1.pay(20))
  end

  


end
