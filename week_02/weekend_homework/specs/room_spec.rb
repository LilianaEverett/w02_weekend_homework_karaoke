require('minitest/autorun')
require('minitest/rg')
require('pry')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < MiniTest::Test

  def setup
    @song1 = Song.new('Living on a Prayer','Bon Jovi')
    @song2 = Song.new('Bohemian Rhapsody','Queen')
    @song3 = Song.new('Free Fallin', 'Tom Petty')
    @room_rock = Room.new('Rock', 4)
    @guest1 = Guest.new('Liliana', @song1)
    @guest2 = Guest.new('Anna', @song2)
    @guest3 = Guest.new('George', @song3)
    @guest4 = Guest.new('Matt', @song1)
    @guest5 = Guest.new('John', @song2)

  end

  def test_get_name
    assert_equal('Rock', @room_rock.name())
  end

  def test_get_maximum_capacity
    assert_equal(4, @room_rock.guests_limit())
  end

  def test_get_playlist
    @room_rock.add_song(@song1)
    @room_rock.add_song(@song2)
    @room_rock.add_song(@song3)
    assert_equal(3, @room_rock.count_playlist())
  end

  def test_add_guests_to_room__can
    @room_rock.add_guest(@guest2)
    @room_rock.add_guest(@guest1)
    assert_equal(2, @room_rock.count_guests())
  end

  def test_add_guests_to_room__can_not
    @room_rock.add_guest(@guest1)
    @room_rock.add_guest(@guest2)
    @room_rock.add_guest(@guest3)
    @room_rock.add_guest(@guest4)
    @room_rock.add_guest(@guest5)
    assert_equal(4, @room_rock.count_guests())
  end



end
