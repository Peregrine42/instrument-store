Given(/^there is an instrument that has several locations$/) do
  warehouse1 = Warehouse.create! name: "the first warehouse"
  warehouse2 = Warehouse.create! name: "the second warehouse"
  warehouse3 = Warehouse.create! name: "the third warehouse"
  
  instrument_stock1 = Stock.create! amount: 5
  instrument_stock2 = Stock.create! amount: 2
  instrument_stock3 = Stock.create! amount: 7
  
  instrument1 = Instrument.create! id: 1
  
  instrument_stock1.instrument = instrument1
  instrument_stock2.instrument = instrument1
  
  instrument_stock1.save!
  instrument_stock2.save!
  
  warehouse1.stock << instrument_stock1
  warehouse1.stock << instrument_stock2
  
  warehouse1.save!
  warehouse2.save!
end

When(/^I visit the details page for an instrument$/) do
  visit "/instruments/1"
end

Then(/^I see the instrument's locations$/) do
  expect(page.body).to have_content "the first warehouse"
end

Then(/^I see the instrument's stock levels$/) do
  expect(page.body).to have_content "5"
  expect(page.body).to have_content "2"
end