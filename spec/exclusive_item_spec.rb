require_relative '../model/item.rb'
require_relative '../model/item/exclusive_item.rb'

describe "ExclusiveItem" do
  it "should initialize member variables" do
    item = ExclusiveItem.new("E-Item", 20, 10)

    expect(item.name).to eq "E-Item"
    expect(item.expiry_days()).to eq 20
    expect(item.quality()).to eq 10
  end

  it "should degrade sell_in_days" do
    item = ExclusiveItem.new("E-Item", 20, 10)

    item.update()
    expect(item.expiry_days()).to eq 19
  end

  it "should upgrade quality" do
    item = ExclusiveItem.new("E-Item", 20, 10)

    item.update()
    expect(item.quality()).to eq 11
  end

  it "should upgrade quality twice when 10 days left" do
    item = ExclusiveItem.new("E-Item", 11, 10)

    item.update()
    expect(item.quality()).to eq 12
  end

  it "should upgrade quality twice when less than 10 days left" do
    item = ExclusiveItem.new("E-Item", 10, 10)

    item.update()
    expect(item.quality()).to eq 12
  end

  it "should upgrade quality twice when 5 days left" do
    item = ExclusiveItem.new("E-Item", 6, 10)

    item.update()
    expect(item.quality()).to eq 13
  end

  it "should upgrade quality twice when less than 5 days left" do
    item = ExclusiveItem.new("E-Item", 5, 10)

    item.update()
    expect(item.quality()).to eq 13
  end

  it "should set quality to 0 when sell in days passed" do
    item = ExclusiveItem.new("E-Item", 1, 10)

    item.update()
    expect(item.quality()).to eq 0
  end
end
