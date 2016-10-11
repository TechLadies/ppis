targetGroups = [
  "No Preference",
  "Children",
  "Youths",
  "Families",
  "Elderly"
]

target_groups.each do |target_group|
  TargetGroup.create!(name: target_group)
end