class Room

attr_reader :name, :guests_limit, :fee
attr_accessor :playlist, :guests

  def initialize(name, guests_limit, fee)
    @name = name
    @guests_limit = guests_limit
    @fee = fee
    @playlist = []
    @guests = []
  end

  def add_song(song)
    @playlist << song
  end

  def count_playlist
    return @playlist.count
  end

  def add_guest(guest)
    if @guests.count < @guests_limit
      @guests << guest
    end
  end

  def count_guests
    return @guests.count
  end

  def check_guest_in_room(guest)
    @guests.include? guest
  end



end
