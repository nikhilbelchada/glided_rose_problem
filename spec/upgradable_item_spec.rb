require_relative '../model/item.rb'
require_relative '../model/item/upgradable_item.rb'

describe "UpgradableItem" do
  it "should initialize member variables" do
    item = UpgradableItem.new("U-Item", 20, 10)

    expect(item.name).to eq "U-Item"
    expect(item.expiry_days()).to eq 20
    expect(item.quality()).to eq 10
  end

  it "should upgrade quality" do
    item = UpgradableItem.new("U-Item", 20, 10)

    item.update()
    expect(item.quality()).to eq 11
  end

  it "should degrade sell_in_days" do
    item = UpgradableItem.new("U-Item", 20, 10)

    item.update()
    expect(item.expiry_days()).to eq 19
  end

  it "should upgrade quality twice once sell by days passed" do
    item = UpgradableItem.new("U-Item", 1, 10)

    item.update()
    expect(item.quality()).to eq 12
  end

end
