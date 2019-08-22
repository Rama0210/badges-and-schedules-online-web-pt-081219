def badge_maker(name)
 "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  result = []
  attendees.each do |name|
  result << badge_maker(name)
  end
  result
end

def assign_rooms(attendees)
  attendees.each_with_index.map do |name, room_number|
    "Hello, #{name}! You'll be assigned to room #{room_number+1}!"
  end
end

def printer(attendees)
  attendees.each_with_index do |name, index|
    puts badge_maker(name)
    puts assign_room(name, index + 1)
  end
end