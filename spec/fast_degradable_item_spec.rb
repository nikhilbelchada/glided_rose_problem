require_relative '../model/item.rb'
require_relative '../model/item/fast_degradable_item.rb'

describe "FastDegradableItem" do
  it "should initialize member variables" do
    item = FastDegradableItem.new("FD-Item", 20, 10)

    expect(item.name).to eq "FD-Item"
    expect(item.expiry_days()).to eq 20
    expect(item.quality()).to eq 10
  end

  it "should degrade sell_in_days" do
    item = FastDegradableItem.new("FD-Item", 20, 10)

    item.update()
    expect(item.expiry_days()).to eq 19
  end

  it "should degrade quality twice fast" do
    item = FastDegradableItem.new("FD-Item", 20, 10)

    item.update()
    expect(item.quality()).to eq 8
  end

  it "should degrade quality four times once sell by days has passed" do
    item = FastDegradableItem.new("FD-Item", 1, 10)

    item.update()
    expect(item.quality()).to eq 6
  end

  it "should not degrade quality in negative" do
    item = FastDegradableItem.new("FD-Item", 20, 0)

    item.update()
    expect(item.quality()).to eq 0
  end
end
