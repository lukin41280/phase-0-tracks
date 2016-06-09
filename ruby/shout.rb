# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "  :)  :)  :)"
# 	end

# end

# p Shout.yell_angrily("I hate Mondays")
# p Shout.yelling_happily("I love Fridays")

module Shout
	def yell_angrily(words)
		p words + "!!!!!!"
	end
end

class Wrestler
	include Shout
end

class Drill_Sergeant
	include Shout
end

hulkHogan = Wrestler.new
hulkHogan.yell_angrily("Let me tell ya something brother")

rLeeErmey = Drill_Sergeant.new
rLeeErmey.yell_angrily("Let me see your war face")