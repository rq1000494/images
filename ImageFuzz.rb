require "./image_array.rb"

img = ImageArray.new("./Hippopotamus_-_04.jpg")

img.each do |row|
	row.each do |pixel|
	pixel_fuzz = (pixel.blue + pixel.green + pixel.red)/10		
		pixel.blue = pixel_fuzz*12
		pixel.green = pixel_fuzz*12
		pixel.red = pixel_fuzz*12
	end
end

img.write("./Hippopotamus_-_04.fuzz.jpg")
