class Room

attr_reader :name, :guests_limit
attr_accessor :playlist, :guests

  def initialize(name, guests_limit)
    @name = name
    @guests_limit = guests_limit
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



end
