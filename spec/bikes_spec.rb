require "bike"

describe Bike do

  describe "#initialize" do
    it "initializes with #working? returning true" do
      expect(subject).to be_working
    end
  end

  describe "#report_broken" do
    it "reasons #working? to return false" do
      subject.report_broken
      expect(subject).to_not be_working
    end
  end

end