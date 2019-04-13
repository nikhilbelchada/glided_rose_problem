require_relative '../model/quality.rb'

describe "Quality" do
  context "degrade_by" do
    it "should degrade by specified value" do
      quality = Quality.new(10)
      quality.degrade_by(5)
      expect(quality.quality).to eq(5)
    end

    it "should not go negatvie" do
      quality = Quality.new(10)
      quality.degrade_by(11)
      expect(quality.quality).to eq(0)
    end
  end

  context "upgrade_by" do
    it "should upgrade by specified value" do
      quality = Quality.new(10)
      quality.upgrade_by(5)
      expect(quality.quality).to eq(15)
    end
  end

  context "full_degrade" do
    it "should set to 0" do
      quality = Quality.new(10)
      quality.full_degrade()
      expect(quality.quality).to eq(0)
    end
  end
end
