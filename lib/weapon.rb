class Weapon

	attr_accessor :weapon_name, :damage, :rate_fire, :crit_chance, :burn_chance
	def initialize(weapon_name)
		@weapon_name = weapon_name
		@damage = 10
		@rate_fire = 1
		@crit_chance = [0, 0.01] #If I were to implement functionality to increase the chances I mulitply the numbers in the array together?
		@burn_chance = [0, 0.01]
	end
end
