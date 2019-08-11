
class KaraokeBar

attr_accessor :name, :till, :rooms, :group

  def initialize(name, till, rooms)
    @name = name
    @till = till
    @rooms = []
  end

  def add_money(amount)
    @till += amount
  end

  def add_group_to_room(room, group)
    if @rooms.include?(room)
      room.add_guest(group)
    end
    return room.count
  end

  # def group_count
  #   @group.count
  # end


  # def room_capacity(group)
  #   room >= @rooms.group_number(group)
  # end


end
