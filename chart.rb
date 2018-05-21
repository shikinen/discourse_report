rows = File.open("report.txt", "r") { |file| file.readlines }.map { |row|
row.chomp.split("\t") }.sort_by { |e| e.last.to_i }.reverse.take(10)

values = rows.map { |r| r.last }.join(",")
labels = rows.map { |r| r.first}.join("|")
url = "https://chart.googleapis.com/chart?cht=p&chds=a&chd=t:#{values}&chs=950x375&chl=#{labels}"

image_content = open(url).read
File.open("report.png", "w") { |f| f.write(image_content) }
