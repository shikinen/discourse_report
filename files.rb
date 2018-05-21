 directory_name = "discourse" 

 Dir.glob(File.join(directory_name, "**", "*.*")).each do |file_name|
 	puts file_name
 end
 