require_relative '../model/expiry/degradable'

describe "Expiry::Degradable" do
  context "update" do
    it "should degrade expiry by 1"do
      expiry = Expiry::Degradable.new(10)
      expiry.update()

      expect(expiry.expiry_days).to eq(9)
    end
  end
end
