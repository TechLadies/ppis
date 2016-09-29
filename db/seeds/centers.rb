centers = [
  ["PPIS Corporate Office (East)", "A", "1@a.com", "63758392", "Blk A"],
  ["INSPIRASI PPIS (West)", "B", "1@b.com", "63721192", "Blk B"],
  ["PPIS As-Salaam Family Support Centre (East)", "C", "1@c.com", "63393725", "Blk C"],
  ["PPIS Family Service Centre (East)", "D", "1@d.com", "62448392", "Blk D"],
  ["PPIS Family Service Centre (West)", "PPIS Family Therapy Institute (East)", "E", "1@e.com", "63758381", "Blk E"],
  ["PPIS Vista Sakinah (North)", "F", "1@f.com", "60058392", "Blk F"],
  ["PPIS Student Care Centre - Bedok (East)", "G", "1@g.com", "63701392", "Blk G"],
  ["PPIS Student Care Centre - Jurong (West)", "H", "1@h.com", "63030392", "Blk H"],
  ["PPIS Child Development Centre – Bedok Reservoir (East)", "I", "1@i.com", "63718350", "Blk I"],
  ["PPIS Child Development Centre – Bukit Batok (West)", "J", "1@j.com", "60558302", "Blk J"],
  ["PPIS Child Development Centre – Jurong (West)", "K", "1@k.com", "68493292", "Blk K"],
  ["PPIS Child Development Centre – Pasir Ris 1 (East)", "L", "1@l.com", "60382392", "Blk L"],
  ["PPIS Child Development Centre – Pasir Ris 2 (East)", "M", "1@m.com", "69472492", "Blk M"],
  ["PPIS Child Development Centre – Sembawang (North)", "N", "1@n.com", "63472542", "Blk N"]
]
centers.each do |name, manager_name, email, contact_number, address|
  Center.create(name: name, manager_name: manager_name, email: email, contact_number: contact_number, address: address)
end
