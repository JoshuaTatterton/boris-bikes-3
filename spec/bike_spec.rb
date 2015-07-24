require './lib/bike.rb'

describe Bike do
    before(:each) {subject.report_broken}

    it {is_expected.to respond_to :working?}

    it 'can be reported broken' do
      expect(subject).to be_broken
    end

    it "can be fixed" do
      subject.fix
      expect(subject).to be_working
    end
end
