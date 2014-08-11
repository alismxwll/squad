class Soldier

	attr_accessor :soldier_name, :health, :strength, :agility, :intelligence, :wisdom, :dexterity, :weapons

	def initialize(soldier_name)
		@soldier_name = soldier_name
		@health = 100
		@strength = 5
		@agility = 5
		@intelligence = 5
		@wisdom = 5
		@dexterity = 5
		@weapons = []
	end

	def add_weapon(weapon_to_add)		
		@weapons << weapon_to_add
	end
end


