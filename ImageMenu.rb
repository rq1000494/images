require "./image_array.rb"
puts "File Path?"
file = gets.chomp

answer = nil

img = ImageArray.new(file)

while (answer != 'q')
	puts "What effect do you want? (bw, tint, fuzz)"
	effect = gets.chomp
	
	if effect == 'bw'
		puts "Making image bw"
img.each do |row|
	row.each do |pixel|
		pixel_gray = (pixel.blue + pixel.green)/3
		pixel.blue = pixel_gray
		pixel.green = pixel_gray
		pixel.red = pixel_gray
	end
end	
	elsif effect == 'tint'
		puts "Making image tinted"
img.each do |row|
	row.each do |pixel|
		pixel.blue = 0
		pixel.green = (pixel.green + pixel.blue)
		pixel.red = 0
	end
end
	elsif effect == 'fuzz'
		puts "Making image fuzzy"
img.each do |row|
	row.each do |pixel|
	pixel_fuzz = (pixel.blue + pixel.green + pixel.red)/10
		pixel.blue = pixel_fuzz*12
		pixel.green = pixel_fuzz*12
		pixel.red = pixel_fuzz*12
	end
end
	else
		puts "Not a valid effect choice"
	end

puts "Please enter the name of the file you want to write your image to"
newfile = gets.chomp
img.write(newfile)

newimg = ImageArray.new(newfile)

	puts "Type q to quit or press enter to continue"
	answer = gets.chomp
end

