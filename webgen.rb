puts "Welcome to Teochew Thunder's Website Template Generator!"

continue = ""
begin
	puts "What is this site called?"
	siteName = gets.chomp;

	puts "Please input the name of the new directory to be created."
	puts "If this is a subdirectory of another directory, the parent folder must exist."
	directoryName = gets.chomp;

	if File::directory?(directoryName)
		puts "This directory already exists."
	else
		Dir.mkdir(directoryName)
		Dir.chdir(directoryName)
		Dir.mkdir("js")
		Dir.mkdir("img")
		Dir.mkdir("css")

		Dir.chdir("js")
		jsFile = File.new("script.js", "w")
		jsFile.close
		Dir.chdir("../")	
	
		Dir.chdir("css")
		cssFile = File.new("styles.css", "w")
		cssFile.close
		Dir.chdir("../")		

		indexFile = File.new("index.html", "w")
		indexFile.syswrite("<!DOCTYPE html>\n")
		indexFile.syswrite("<html>\n")
		indexFile.syswrite("    <head>\n")
		indexFile.syswrite("        <title>" + siteName + "</title>\n")
		indexFile.syswrite("        <script src=\"js/script.js\"></script>\n")
		indexFile.syswrite("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/styles.css\">\n")
		indexFile.syswrite("    </head>\n")
		indexFile.syswrite("\n")
		indexFile.syswrite("    <body>\n")
		indexFile.syswrite("        <!-- Your content here -->\n")
		indexFile.syswrite("    </body>\n")
		indexFile.syswrite("</html>\n")
		indexFile.close

		puts "Site created for %s." % [siteName]
	end 

	puts "Do you wish to continue? (Y/N)"
	continue = gets.chomp
rescue Errno::ENOENT
	puts "Error: Directory not created. The parent of the new directory '%s' was not found." % [directoryName]

	puts "Do you wish to continue? (Y/N)"
	continue = gets.chomp
end while continue == "Y" or continue == "y"


