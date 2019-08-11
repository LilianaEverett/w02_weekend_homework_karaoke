class Guest

attr_reader :name, :fav_songs, :wallet

  def initialize(name, fav_songs, wallet)
    @name = name
    @fav_songs = fav_songs
    @wallet = wallet
  end

def pay(amount)
  @wallet - amount
end

end
