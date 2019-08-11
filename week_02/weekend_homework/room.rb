class Room

attr_reader :name, :max_cap
attr_accessor :playlist, :group

  def initialize(name, max_cap)
    @name = name
    @max_cap = max_cap
    @playlist = []
    @group = []
  end

  def add_song(song)
    @playlist << song
  end

  def count_playlist
    return @playlist.count
  end

  def add_guest(guest)
    @group << guest
  end

  def count_group
    return @group.count
  end



end
