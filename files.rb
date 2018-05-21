 directory_name = "discourse" 

 file_list = Dir.glob(File.join(directory_name, "**", "*.*")).inject({}) do |file|
 	ext = File.extname(file)
 	hash[ext] ||= 0
 	hash[ext] += 1
 	hash
 end

 puts file_list
