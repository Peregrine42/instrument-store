require "rails_helper"

describe Instrument do
  it "returns the total number in stock" do
    i = Instrument.create!
    s1 = Stock.create! amount: 5
    s2 = Stock.create! amount: 2
    
    [s1, s2].each do |s|
      s.instrument = i
      s.save!
    end
    
    expect(i.stock_total).to eq 7
  end
end