When(/^I visit the move stock page$/) do
  visit "/stock/1/move"
end

When(/^I fill out the move stock form$/) do
  fill_in "amount", 1
  select "the second warehouse"
end

When(/^I click the move stock button$/) do
  click "move"
end

Then(/^the stock is moved to a new location$/) do
  expect(@warehouse1.stock.first.amount).to eq 4
  expect(@warehouse2.stock.first.amount).to eq 3
end

Then(/^the overall stock level remains the same$/) do
  expect(@warehouse1.stock.instrument.stock_total).to eq 7
end