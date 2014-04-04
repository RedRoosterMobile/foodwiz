Given(/^Test$/) do
  assert true
end

Given(/^I am on the home page$/) do
  visit '/'
  assert page.has_content? 'Willkommen'
end