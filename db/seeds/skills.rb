skills = [
  "Academic",
  "Administration",
  "Arts",
  "Befriending",
  "Business",
  "Children activities",
  "Cooking",
  "Counselling/social work",
  "Design",
  "Events",
  "Finance",
  "Health",
  "Islamic knowledge",
  "IT",
  "Language",
  "Life skills",
  "Media",
  "Photography",
  "Sports",
  "Travel",
  "Writing",
  "Other"
]
skills.each do |name|
  Skill.create!(name: name)
end
