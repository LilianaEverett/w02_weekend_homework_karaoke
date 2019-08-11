
class KaraokeBar

attr_accessor :name, :till, :rooms, :group

  def initialize(name, till, rooms)
    @name = name
    @till = till
    @rooms = rooms
  end

  def add_money(amount)
    @till += amount
  end

  def check_in(room, guest, amount)
    if @rooms.include?(room) || guest.wallet >= room.fee
      room.add_guest(guest)
    end
    add_money(amount)
    guest.pay(amount)
  end



end
