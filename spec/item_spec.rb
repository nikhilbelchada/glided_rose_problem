require_relative '../model/item.rb'

describe "Item" do
  context "initialize" do
    it "should initialize member variables" do
      item = Item.new("D-Item", 20, 10)

      expect(item.name).to eq "D-Item"
    end
  end
end
