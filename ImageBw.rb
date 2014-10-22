require "./image_array.rb"

img = ImageArray.new("./Hippopotamus_-_04.jpg")

img.each do |row|
	row.each do |pixel|
		pixel_gray = (pixel.blue + pixel.green)/3
		pixel.blue = pixel_gray
		pixel.green = pixel_gray
		pixel.red = pixel_gray
	end
end

img.write("./Hippopotamus_-_04.bw.jpg")
