require "./image_array.rb"

img = ImageArray.new("./Hippopotamus_-_04.jpg")

img.each do |row|
	row.each do |pixel|
		pixel.blue = 0
		pixel.green = (pixel.green + pixel.blue)
		pixel.red = 0
	end
end

img.write("./Hippopotamus_-_04.tint.jpg")
