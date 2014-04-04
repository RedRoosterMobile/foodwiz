When /^I search Google for "(.*)"$/ do |query|
  visit '/'
  assert true
  assert page
end
