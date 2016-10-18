certifications = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F"
]

certifications.each do |certification|
  Certification.create(name: certification)
end
