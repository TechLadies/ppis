events = [
  ["event 1", "Bukit Batok Street", "IINSPIRASI PPIS", "6", "14 Nov 2016", DateTime.new(2016, 11, 10,), 
    DateTime.new(2016, 11, 10, 9, 30), DateTime.new(2016, 11, 10, 11, 30), "xxxxx"],
  ["event 2 (Day 1)", "Ubi Ave 1", "PPIS As-Salaam Family Support Centre", "2", DateTime.new(2016, 11, 12 ), 
    DateTime.new(2016, 11, 12, 8, 15) , DateTime.new(2016, 11, 12, 18, 30) , "xxxxx"],
  ["event 2 (Day 2)", "Ubi Ave 1", "PPIS As-Salaam Family Support Centre", "2", DateTime.new(2016, 11, 13),
    DateTime.new(2016, 11, 13, 8, 15) , DateTime.new(2016, 11, 13, 18, 30) , "xxxxx"],
  ["event 3", "Eunos Crescent", "IINSPIRASI PPIS", "2", DateTime.new(2016, 12, 5),
    DateTime.new(2016, 12, 5, 10) , DateTime.new(2016, 12, 5, 18, 30) , "xxxxx"],
  ["event 4", "Bedok Reservoir Road", "IINSPIRASI PPIS", "10", 
    DateTime.new(2016, 12, 15), DateTime.new(2016, 12, 15, 8, 45) , DateTime.new(2016, 12, 15, 18, 30) , "xxxxx"],
  ["event 5", "Ubi Ave 1", "IINSPIRASI PPIS", "3", DateTime.new(2017, 4, 10),
    DateTime.new(2017, 4, 10, 12, 30) , DateTime.new(2017, 4, 10, 14, 30) , "xxxxx"]
]

events.each do |event_name, location, center, number_of_volunteers, date, start_time, end_time, description|
  Event.create!(
    event_name: event_name,
    location: location,
    center: Center.find_by(name: center),
    number_of_volunteers: number_of_volunteers,
    date: date,
    start_time: start_time,
    end_time: end_time,
    description: description
  )
end