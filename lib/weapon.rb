class Weapon
	def initialize(weapon_name)
		@weapon_name = weapon_name
		@damage = 10
		@rate_fire = 1
		@crit_chance = [0, 0.01] #If I were to implement functionality to increase the chances I could replace[0] and mulitply the numbers in the array together?
		@burn_chance = [0, 0.01]
	end

	def weapon_name
		@weapon_name
	end

	def damage
		@damage
	end

	def rate_fire
		@rate_fire		
	end

	def crit_chance
		@crit_chance		
	end

	def burn_chance
		@burn_chance
	end
end
