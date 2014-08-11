 require 'soldier'
 require 'weapon'

describe Soldier do

	describe '.all' do
	it 'starts out with an empty array of soldiers' do
		expect(Soldier.all).to eq []
		end
	end

	describe 'add_soldier' do
		it 'add soldiers to the array of soldiers' do
			test_soldier = Soldier.new('Janey')
			test_soldier.add_soldier
			expect(Soldier.all).to eq [test_soldier]
		end
	end

	describe 'remove_soldiers' do
		it 'removes a soldier from your array' do
		test_soldier = Soldier.new('Janey')
		test_soldier.add_soldier
		test_soldier.remove_soldiers
		expect(Soldier.all).to eq []
		end
	end

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

	it 'lists out all of the weapon names in the weapons array' do
		test_soldier = Soldier.new('Joe')
		test_weapon1 = Weapon.new('flower-Power')
		test_weapon2 = Weapon.new('Water Gun')
		test_soldier.add_weapon(test_weapon1)
		test_soldier.add_weapon(test_weapon2)
		expect(test_soldier.list_weapons).to eq ['flower-Power', 'Water Gun']
	end
end
