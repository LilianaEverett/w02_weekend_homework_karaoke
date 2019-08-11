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

    @room_rock = Room.new('Rock', 20),
    @room_pop = Room.new('Pop', 5)

    @group_rock =[
      @guest1 = Guest.new('Liliana', @song1),
      @guest2 = Guest.new('Anna', @song2),
      @guest3 = Guest.new('George', @song3),
      @guest4 = Guest.new('Matt', @song4),
      @guest5 = Guest.new('John', @song5),
      @guest6 = Guest.new('Lucy', @song6)
    ]

    @karaoke_bar = KaraokeBar.new('Sing City', 0, [@room_rock, @room_pop])

  end

  def test_get_name
    assert_equal('Sing City', @karaoke_bar.name())
  end

  def test_get_till_amount
    @karaoke_bar.add_money(20)
    assert_equal(20, @karaoke_bar.till)
  end

  # def test_get_number_of_rooms
  #   assert_equal(2, @karaoke_bar.rooms.count)
  # end

  # def test_add_room_to_rooms
  #   @rooms.add_room(@room_rock)
  #   assert_equal(1, @rooms.count)
  # end

  def test_add_guests_to_room
    result = @karaoke_bar.add_group_to_room(@room_rock, @group_rock)

    assert_equal(6, result)
  end

  # def test_add_guest_to_group
  #   @KaraokeBar.add_guest_to_group(@guest1)
  #   @KaraokeBar.add_guest_to_group(@guest2)
  #   assert_equal(2, @group.count())
  # end

  # def test_check_in__can_fit_the_room
  #   assert_equal(true, @karaoke_bar.room_capacity())
  # end


end
