require_relative '../model/item_expiry.rb'

describe "ItemExpiry" do
  context "degrade" do
    it "should degrade expiry by 1"do
      expiry = ItemExpiry.new(10)
      expiry.degrade()

      expect(expiry.expiry_days).to eq(9)
    end
  end
end
