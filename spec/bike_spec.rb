require 'bike'

describe Bike do
	it { is_expected.to respond_to(:working?) }

	it "not working when reported broken" do
   subject.report_broken
   expect(subject.working?).to eq(false)
  end

  it "report broken" do
  	subject.report_broken
  	expect(subject.broken?).to eq(true)
	end
end