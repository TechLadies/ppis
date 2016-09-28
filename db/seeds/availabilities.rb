availabilities = [
  "No Constraint",
  "During Office Hours",
  "After Office Hours",
  "Weekends"
]

availabilities.each do |availability|
  Availability.create(name: availability)
end

