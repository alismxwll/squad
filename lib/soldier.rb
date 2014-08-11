class Soldier

	attr_accessor :soldier_name, :health, :strength, :agility, :intelligence, :wisdom, :dexterity, :weapons

	@@soldiers = []

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

	def self.all
		@@soldiers
	end

	def add_soldier
		@@soldiers << self
	end

	def remove_soldiers
		@@soldiers = []
	end

	def add_weapon weapon_to_add		
		@weapons << weapon_to_add
	end

	def remove_weapon weapon_to_remove
		@weapons.delete(weapon_to_remove)		
	end

	def list_weapons
		list_weapon_names = []
		@weapons.each do |weapon|
			list_weapon_names << weapon.weapon_name
		end
		list_weapon_names
	end
end


