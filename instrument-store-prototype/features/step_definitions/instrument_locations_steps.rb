Given(/^there is an instrument in the database that has a location$/) do
  warehouse1 = Warehouse.create! name: "the first warehouse"
  instrument = Instrument.create! id: 1
  instrument.warehouse = warehouse1
  instrument.save!
end

When(/^I visit the details page for an instrument$/) do
  visit "/instruments/1"
end

Then(/^I see the instrument's location$/) do
  expect(page.body).to have_content "the first warehouse"
end