admin = Admin.create!(email: 'admin@ppis.com', password: '123123')
admin.add_role(:admin)

staff = Admin.create!(email: 'staff@ppis.com', password: '123123')
staff.add_role(:staff)
