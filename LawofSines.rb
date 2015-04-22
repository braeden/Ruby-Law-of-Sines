class Numeric
#Here is where the conversion to radians from degrees
  def to_rad
    self * Math::PI / 180.0
  end
end
class Numeric
	def to_deg
	  self * 180.0 / Math::PI 
	end
end


def law_sine
	puts "Do you know 2 sides + 1 angle (A), OR 2 angles + 1 side (B)?"
	angle = gets.chomp
	case angle.downcase
		when 'a'
			puts "Input Side A (Opposite of Unknown Angle--ANGLE A)"
			sideA = gets.chomp.to_f
			puts "Input Side B (Opposite of Known Angle--ANGLE B)"
			sideB = gets.chomp.to_f
			puts "Input Angle B (Opposite of Known Side--SIDE B)"
			angleB = gets.chomp.to_f
			angleBdeg = angleB.to_rad
			ans = Math.asin(Math.sin(angleB)*sideA/sideB)
			puts ""
			puts "If angle(s) were in radians..."
			puts ""
			puts "Angle A in Radians:"
			puts ans.round(3)
			puts "Angle A in Degrees:"
			puts ans.to_deg.round(3)
			puts ""
			#Math Assuming degrees
			ansDeg = Math.asin(Math.sin(angleBdeg)*sideA/sideB)
			puts "If angle(s) were in degrees..."
			puts ""
			puts "Angle A in Degrees:"
			puts ansDeg.to_deg.round(3)
			puts "Angle A in Radians:"
			puts ansDeg.round(3)
		when 'b'
			puts "Input Side A (Opposite of Known Angle--ANGLE A)"
			sideA = gets.chomp.to_f
			puts "Input Angle A (Opposite of Known Side--SIDE A)"
			angleA = gets.chomp.to_f
			angleAdeg = angleA.to_rad
			puts "Input Angle B (Opposite of Unknown Side--SIDE B)"
			angleB = gets.chomp.to_f
			angleBdeg = angleB.to_rad
			ans = sideA * Math.sin(angleB)/Math.sin(angleA)
			puts ""
			puts "If angle(s) were in radians..."
			puts ""
			puts "Side B:"
			puts ans.round(3)
			puts ""
			#Math Assuming degrees
			ansDeg  = sideA * Math.sin(angleBdeg)/Math.sin(angleAdeg)
			puts "If angle(s) were in degrees..."
			puts ""
			puts "Side B:"
			puts ansDeg.round(3)
		#Original by: Matt Greenapple
		#Redone and revised Braeden Smith
		#Everything is functional now
		#Note: The method is not a real method due to the original set up, as well as the 2 possible choices
		else
			puts "Please enter A or B"
		end
end
puts law_sine
