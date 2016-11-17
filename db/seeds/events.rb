events = [
  ["event 1", "Bukit Batok Street", "IINSPIRASI PPIS", "6", "14 Nov 2016", DateTime.new(2016, 11, 10,), 
    DateTime.new(2016, 11, 10, 9, 30), DateTime.new(2016, 11, 10, 11, 30), "Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Pellentesque nec massa odio. Nam blandit ante diam, eu ornare augue varius sed. Praesent felis erat,
efficitur vitae urna id, imperdiet iaculis lectus. Curabitur laoreet, augue vitae consectetur tincidunt, est enim
condimentum tortor, et tempus urna lectus at massa. Vivamus vitae purus et purus egestas vestibulum. Vestibulum eu
tempus nisi. Cras sollicitudin dolor non eros lacinia, rhoncus rutrum lacus condimentum. Etiam vel libero nisi.
Quisque ut consequat ante. In imperdiet ligula sollicitudin massa bibendum malesuada. Proin nec magna ante. Cras
facilisis turpis a enim fermentum, eu vulputate nibh gravida. Pellentesque vulputate vulputate elementum."],
  ["event 2 (Day 1)", "Ubi Ave 1", "PPIS As-Salaam Family Support Centre", "2", DateTime.new(2016, 11, 12 ), 
    DateTime.new(2016, 11, 12, 8, 15) , DateTime.new(2016, 11, 12, 18, 30) , "Donec et malesuada diam. In molestie,
odio ac tristique varius, libero nunc sollicitudin felis, quis imperdiet turpis diam nec velit. Suspendisse porttitor
interdum felis vulputate facilisis. Mauris at massa ante. Donec quis tortor dui. Duis fermentum felis nec ipsum tempor,
 eget mollis leo placerat. Proin purus mauris, scelerisque eget scelerisque eu, imperdiet eu orci. Duis venenatis id
 nulla ut luctus. Curabitur a nunc nec ipsum molestie convallis ac eu arcu. Proin feugiat diam massa, sed tristique
eros cursus a. Suspendisse ac nisi erat."],
  ["event 2 (Day 2)", "Ubi Ave 1", "PPIS As-Salaam Family Support Centre", "2", DateTime.new(2016, 11, 13),
    DateTime.new(2016, 11, 13, 8, 15) , DateTime.new(2016, 11, 13, 18, 30) , "Pellentesque in varius nibh, at mollis
lacus. Quisque varius, urna vel finibus mollis, ipsum est tempor elit, a commodo mi metus nec mi. Duis at mauris
hendrerit, dignissim enim nec, laoreet metus. Aliquam vulputate luctus velit eu accumsan. Nullam a ultricies diam, vel
 molestie nibh. Praesent quis mauris molestie, aliquet diam et, posuere velit. Integer ut dictum erat, at tincidunt
nulla. Donec vel eros est. Nulla sollicitudin et lectus non finibus. Duis rhoncus erat id vulputate sagittis. Nam eu
posuere nibh. Sed felis lectus, lobortis a dignissim vel, mattis vitae lorem. Duis fringilla ligula magna, in interdum
 turpis faucibus a."],
  ["event 3", "Eunos Crescent", "IINSPIRASI PPIS", "2", DateTime.new(2016, 12, 5),
    DateTime.new(2016, 12, 5, 10) , DateTime.new(2016, 12, 5, 18, 30) , "Fusce sem enim, mattis ut nibh at, lobortis
 molestie ligula. Nulla iaculis lacus nisi, sit amet vestibulum massa blandit vitae. Phasellus sem odio, tempus eu arcu
a, feugiat tincidunt justo. Praesent finibus volutpat blandit. Nulla vulputate turpis egestas, aliquet ipsum et,
pellentesque dolor. Pellentesque ultrices eget mauris at tincidunt. Cras eu porta turpis. Phasellus vitae efficitur
tellus."],
  ["event 4", "Bedok Reservoir Road", "IINSPIRASI PPIS", "10", 
    DateTime.new(2016, 12, 15), DateTime.new(2016, 12, 15, 8, 45) , DateTime.new(2016, 12, 15, 18, 30) , "Aenean
commodo, velit quis lobortis fringilla, odio sapien accumsan diam, quis pharetra risus arcu molestie odio. Aenean
sodales aliquam purus nec pellentesque. Praesent interdum lectus quis sapien placerat eleifend. Vivamus et tempus
lacus. Nunc id auctor magna. Fusce semper varius nunc vitae porttitor. Nunc lobortis lacus porttitor, ullamcorper orci
 nec, pulvinar massa. Suspendisse venenatis quam erat, eget dignissim arcu faucibus efficitur. Donec cursus sagittis
nisl, nec interdum nibh aliquet eu. Cras pretium non erat vitae interdum. Sed imperdiet lacus non porttitor ornare. Nunc
 aliquet luctus condimentum. Donec nec enim viverra, blandit tellus ut, sodales velit. Sed consectetur ligula eu dui
pharetra dictum. Fusce eget dolor eu lacus sagittis iaculis. Ut dictum interdum mauris sit amet tristique."],
  ["event 5", "Ubi Ave 1", "IINSPIRASI PPIS", "3", DateTime.new(2017, 4, 10),
    DateTime.new(2017, 4, 10, 12, 30) , DateTime.new(2017, 4, 10, 14, 30) , "Vivamus mauris sapien, mattis eu molestie
nec, tincidunt iaculis diam. Nullam tincidunt odio vitae ipsum iaculis, a lacinia felis facilisis. Sed finibus
condimentum sapien eget gravida. Donec sollicitudin metus eu diam consequat, luctus scelerisque libero tristique.
 Nulla porta porta erat nec dapibus. Donec nec leo nec enim scelerisque consequat. Phasellus non turpis non lacus
maximus blandit. Praesent dapibus augue vel imperdiet gravida. Quisque rhoncus imperdiet urna vel condimentum. Quisque
neque lorem, congue ut diam et, ultricies feugiat nulla.

"]
]

events.each do |event_name, location, center, number_of_volunteers, date, start_time, end_time, description|
  Event.create!(
    event_name: event_name,
    location: location,
    center: Center.find_by(name: center),
    number_of_volunteers: number_of_volunteers,
    date: date,
    start_time: start_time,
    end_time: end_time,
    description: description
  )
end
