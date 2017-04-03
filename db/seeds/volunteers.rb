edus = FomalEducation.all.to_a
certs = Certification.all.to_a
centers = Center.all.to_a
target_groups = TargetGroup.all.to_a
skills = Skill.all.to_a
availabilities = Availability.all.to_a

1.upto(100) do |i|
  Volunteer.create(
    email: "volunteer+#{i}@email.com",
    password: '123123',
    formal_education: edus.sample,
    name: "Volunteer ##{i}",
    certifications: [certs.sample],
    centers: [centers.first],
    target_groups: target_groups,
    skills: skills,
    availabilities: availabilities
  )
end
