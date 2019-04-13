require_relative '../model/item.rb'
require_relative '../model/item/legendary_item.rb'

describe "LengendaryItem" do
  it "should initialize member variables" do
    item = LegendaryItem.new("L-Item", 20, 10)

    expect(item.name).to eq "L-Item"
    expect(item.expiry_days()).to eq 20
    expect(item.quality()).to eq 10
  end

  it "should not degrade quality" do
    item = LegendaryItem.new("L-Item", 20, 10)

    item.update()
    expect(item.quality()).to eq 10
  end

  it "should not degrade sell_in_days" do
    item = LegendaryItem.new("L-Item", 20, 10)

    item.update()
    expect(item.expiry_days()).to eq 20
  end
end
