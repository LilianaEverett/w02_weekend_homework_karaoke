require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../karaoke_bar')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestKaraokeBar < MiniTest::Test

  def setup
    @song1 = Song.new('Living on a Prayer','Bon Jovi')
    @song2 = Song.new('Bohemian Rhapsody','Queen')
    @song3 = Song.new('Free Fallin', 'Tom Petty')

    @song4 = Song.new('Baby One More Time', 'Britney Spears')
    @song5 = Song.new('Push', 'Matchbox Twenty')
    @song6 = Song.new('Treasure', 'Bruno Mars')

    @room_rock = Room.new('Rock', 20, 20),
    @room_pop = Room.new('Pop', 5, 20)

      @guest1 = Guest.new('Liliana', @song1, 100)
      @guest2 = Guest.new('Anna', @song2, 200)
      @guest3 = Guest.new('George', @song3, 300)
      @guest4 = Guest.new('Matt', @song4, 400)
      @guest5 = Guest.new('John', @song5, 500)
      @guest6 = Guest.new('Lucy', @song6, 10)


    @karaoke_bar = KaraokeBar.new('Sing City', 0, [@room_rock, @room_pop])

  end

  def test_get_name
    assert_equal('Sing City', @karaoke_bar.name())
  end

  def test_get_till_amount
    @karaoke_bar.add_money(20)
    assert_equal(20, @karaoke_bar.till)
  end

  def test_get_number_of_rooms
    assert_equal(2, @karaoke_bar.rooms.count)
  end

  def test_check_in__guest_can_afford
    @karaoke_bar.check_in(@room_pop, @guest1, 20)
    @karaoke_bar.check_in(@room_pop, @guest2, 20)
    @karaoke_bar.check_in(@room_pop, @guest3, 20)

    assert_equal(60, @karaoke_bar.till())
    assert_equal(3, @room_pop.count_guests())
    assert_equal(80, @guest1.wallet)
  end

  def test_check_in__guest_can_not_afford
    @karaoke_bar.check_in(@room_pop, @guest1, 20)
    @karaoke_bar.check_in(@room_pop, @guest2, 20)
    @karaoke_bar.check_in(@room_pop, @guest6, 20)

    assert_equal(60, @karaoke_bar.till())
    assert_equal(3, @room_pop.count_guests())
    assert_equal(80, @guest1.wallet)
  end



end
