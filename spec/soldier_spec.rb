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
end
