formal_educations = ["N Level", "O Level", "A Level", "NITEC", "Higher NITEC", "Diploma", "Degree", "Master", "PhD",
  "Other"
]
formal_educations.each do |education|
  FormalEducation.create(name: education)
end