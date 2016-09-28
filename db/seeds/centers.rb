centers = [
  "PPIS Corporate Office (East)", "INSPIRASI PPIS (West)", "PPIS As-Salaam Family Support Centre (East)",
  "PPIS Family Service Centre (East)", "PPIS Family Service Centre (West)", "PPIS Family Therapy Institute (East)",
  "PPIS Vista Sakinah (North)", "PPIS Student Care Centre - Bedok (East)", "PPIS Student Care Centre - Jurong (West)",
  "PPIS Child Development Centre – Bedok Reservoir (East)", "PPIS Child Development Centre – Bukit Batok (West)",
  "PPIS Child Development Centre – Jurong (West)", "PPIS Child Development Centre – Pasir Ris 1 (East)",
  "PPIS Child Development Centre – Pasir Ris 2 (East)", "PPIS Child Development Centre – Sembawang (North)"
]

centers.each do |name|
  Center.create(name: name)
end
