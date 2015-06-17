#!/usr/bin/env ruby

# require 'RMagick'
# include Magick

class Circle

	# set up instance variable, get getter and setter for free
	attr_accessor :radius
	
	# set up constructor
	def initialize radius
		self.radius = radius
	end 

	def radius
		# @ sign signifies that is an instance variable, so as not to confuse
		# with the method that is also self.radius
		
		# return is implied for last statement of anything, so can omit
		# return @radius would also work
		@radius
	end

	# expect(circle.area).to eq(Math::PI * (rad ^ 2))
	def area
		Math::PI * (self.radius ^ 2)
	end

	def circumference
		2 * Math::PI * self.radius
	end

	# def draw
	# 	img = Image.new(radius*2+100,radius*2+100) { self.background_color = "white" }
	# 	d = Magick::Draw.new
	# 	d.stroke = "red"
	# 	d.fill_opacity(0)
	# 	d.stroke_width(6)
	# 	d.ellipse(img.rows/2,img.columns/2, radius, radius, 0, 360)
	# 	d.draw(img)
	# 	img.display
	# end

end

if __FILE__ == $0

	c = Circle.new(400)
	c.radius
	c.draw

end
