 require 'soldier'
 require 'weapon'

describe Soldier do
	it 'should initialize a Soldier object' do
		new_sol = Soldier.new('bill')
		expect(new_sol).to be_an_instance_of Soldier
	end

	it 'should be able to name your soldier' do
		new_sol = Soldier.new('bill')
		expect(new_sol.soldier_name).to eq 'bill'
	end

	it 'should initialize the Soldier with default stats' do
	new_sol = Soldier.new('bill')
	expect(new_sol.health).to eq 100
	expect(new_sol.strength).to eq 5
	expect(new_sol.agility).to eq 5
	expect(new_sol.intelligence).to eq 5
	expect(new_sol.wisdom).to eq 5
	expect(new_sol.dexterity).to eq 5
	end

	it 'adds a weapon to the soldiers weapon array' do
		test_soldier = Soldier.new('Bill')
		test_weapon = Weapon.new('Uzi')
		test_soldier.add_weapon(test_weapon)
		expect(test_soldier.weapons.first.weapon_name).to eq 'Uzi'
	end

	it 'removes a weapon from the soldiers weapon array' do
		test_soldier = Soldier.new('Roger')
		test_weapon = Weapon.new('Uzi')
		test_soldier.remove_weapon(test_weapon)
		expect(test_soldier.weapons).to eq []
	end
end

describe Weapon do
	it 'should initialize a new weapon object' do
		new_wep = Weapon.new('uzi')
		expect(new_wep).to be_an_instance_of Weapon
	end

	it 'should be able to name your new weapon' do
		new_wep = Weapon.new('uzi')
		expect(new_wep.weapon_name).to eq 'uzi'
	end

	it 'should initialize the Weapon with default base default stats' do
		new_wep = Weapon.new('uzi')
		expect(new_wep.damage).to eq 10
		expect(new_wep.rate_fire).to eq 1
		expect(new_wep.crit_chance).to eq [0, 0.01]
		expect(new_wep.burn_chance).to eq [0, 0.01]
	end
end
