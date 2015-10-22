Given(/^there are two instrument stocks at the same warehouse$/) do
  w = Warehouse.create! name: "the warehouse"
  i = Instrument.create!
  
  s1 = Stock.create! amount: 5, shelf_id: "d4"
  s2 = Stock.create! amount: 1, shelf_id: "d9"
  
  s1.warehouse = w
  s2.warehouse = w
  s1.instrument = i
  s2.instrument = i
  
  [w, i, s1, s2].each { |item| item.save! }
end

Then(/^I see the shelf number for each instrument$/) do
  expect(page.body).to have_content "d4"
  expect(page.body).to have_content "d9"
end