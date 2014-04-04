Given(/^I make a request$/) do
  visit '/'
end

And(/^I get the page$/) do
  assert true
  assert page
end