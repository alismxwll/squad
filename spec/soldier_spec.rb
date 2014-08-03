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
end

