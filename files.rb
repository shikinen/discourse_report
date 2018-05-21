 directory_name = "discourse" 

 file_list = Dir.glob(File.join(directory_name, "**", "*.*")).inject({}) do |hash, file|
 	ext = File.extname(file)
 	hash[ext] ||= 0
 	hash[ext] += 1
 	hash
 end

 File.open("report.txt", "w") do |file|
 	file_list.each do |file_type, count|
 		file.puts "#{file_type}\t#{count}"
 	end
 end

