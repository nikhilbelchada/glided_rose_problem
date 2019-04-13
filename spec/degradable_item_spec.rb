require_relative '../model/item.rb'
require_relative '../model/item/degradable_item.rb'

describe "DegradableItem" do
  it "should initialize member variables" do
    item = DegradableItem.new("D-Item", 20, 10)

    expect(item.name).to eq "D-Item"
    expect(item.expiry_days()).to eq 20
    expect(item.quality()).to eq 10
  end

  it "should degrade sell_in_days" do
    item = DegradableItem.new("D-Item", 20, 10)

    item.update()
    expect(item.expiry_days()).to eq 19
  end

  it "should degrade quality" do
    item = DegradableItem.new("D-Item", 20, 10)

    item.update()
    expect(item.quality()).to eq 9
  end

  it "should not degrade quality in negative" do
    item = DegradableItem.new("D-Item", 20, 0)

    item.update()
    expect(item.quality()).to eq 0
  end

  it "should degrade twice on sell by days passed" do
    item = DegradableItem.new("FD-Item", 1, 10)

    item.update()
    expect(item.quality()).to eq 8
  end
end
