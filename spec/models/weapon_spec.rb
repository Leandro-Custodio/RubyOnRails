require 'rails_helper'

RSpec.describe Weapon, type: :model do

  it"level valid"do
    Weapon = build( :weapon, level: FFaker::Random.rand(100..9999))
    expect(Weapon).to_not be_valid
  end

  it"Weapon title valid" do
     weapon = create(:weapon )
    
    expect(weapon.title).to eq("#{weapon.name} ##{weapon.level}")
  end
  it "Weapon with power_base invalid" do

    weapon = build(:weapon, power_base: FFaker::Random.rand(100001..10000000))
    expect(weapon).to_not be_valid
  end
end
