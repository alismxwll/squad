require 'soldier'
require 'weapon'

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