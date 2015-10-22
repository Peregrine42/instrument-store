class Instrument < ActiveRecord::Base
  has_many :stock
  
  def stock_total
    stock.reduce(0) { |acc, item| acc + item.amount }
  end
end