
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

  def check_in(room, guest)
    if @rooms.include?(room) && guest.wallet >= room.fee
      room.add_guest(guest)
      add_money(room.fee)
      guest.pay(room.fee)
    end
  end

  def check_out(room, guest)
    if @rooms.include?(room) && room.check_guest_in_room(guest)
      room.guests.delete(guest)
    end
  end





end
