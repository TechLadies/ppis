admin = Admin.create!(email: 'admin@ppis.com', password: '123123')
admin.add_role(:admin)

centers = Center.all
staff_emails = ['info@ppis.sg',
                'inspirasi@ppis.sg',
                'as-salaam@ppis.sg ',
                'fsceast@ppis.sg ',
                '1fscwest@ppis.sg ',
                'fti@ppis.sg',
                'sccbedok@ppis.sg',
                'sccjurong@ppis.sg',
                'training@ppis.sg',
                'vistasakinah@ppis.sg',
                'brc@ppis.sg',
                'bbc@ppis.sg',
                'jrc@ppis.sg',
                'prc1@ppis.sg',
                'prc2@ppis.sg',
                'sbv@ppis.sg']
staff_emails.each do |email|
  center = centers.detect {|c| c.email == email }
  staff = Admin.create!(email: email, password: '123123', center: center)
  staff.add_role(:staff)
end
