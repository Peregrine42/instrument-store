require "database_cleaner"

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

w1 = Warehouse.create! name: "first warehouse"
w2 = Warehouse.create! name: "second warehouse"
w3 = Warehouse.create! name: "third warehouse"

i1 = Instrument.create!

s1 = Stock.create! amount: 5
s2 = Stock.create! amount: 3

s1.instrument = i1
s2.instrument = i1
s1.warehouse = w1
s2.warehouse = w2

[w1, w2, w3, i1, s1, s2].each do |i|
  i.save!
end