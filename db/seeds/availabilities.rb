availabilities = [
  "Weekdays: Morning",
  "Weekdays: Afternoon",
  "Weekdays: Evening",
  "Weekends: Morning",
  "Weekends: Afternoon",
  "Weekends: Evening"
]

availabilities.each do |availability|
  Availability.create(name: availability)
end

