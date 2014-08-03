 require 'soldier'

describe Soldier do
	it 'should initialize a new object' do
	new_sol = Soldier.new('bill')
	expect(new_sol).to be_an_instance_of Soldier
	end

	it 'should be able to name your soldier' do
		new_sol = Soldier.new('bill')
		expect(new_sol.name).to eq 'bill'
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

