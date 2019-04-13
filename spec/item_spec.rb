require_relative '../model/item.rb'

describe "Item" do
  context "initialize" do
    it "should initialize member variables" do
      item = Item.new("D-Item", 20, 10)

      expect(item.name).to eq "D-Item"
      expect(item.expiry_days()).to eq 20
      expect(item.quality()).to eq 10
    end
  end
end
