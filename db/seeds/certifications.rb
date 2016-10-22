certifications = [
  "Driving License: Class 2B, 2A, 2",
  "Driving License: Class 3, 3A",
  "Driving License: Class 4",
  "First Aid",
  "CPR",
  "Counselling",
  "Therapy",
  "Food Hygiene Course"
]

certifications.each do |certification|
  Certification.create(name: certification)
end
