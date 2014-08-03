 require 'soldier'

describe Soldier do
	it 'should initialize a new object' do
	new_sol = Soldier.new('bill')
	expect(new_sol).to be_an_instance_of Soldier
	end
end

