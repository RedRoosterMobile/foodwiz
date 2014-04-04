And(/^I subscribe with my credentials$/) do
  within "nav" do
    click_link 'Anmelden'
  end
  fill_in 'Email' , with: 'somefuck@example.com'
  fill_in 'Password' , with: '123456'
  fill_in 'Password confirmation' , with: '123456'
  click_button t('helpers.submit.send')
end

Then(/^I should be logged in$/) do
  assert page.has_content?('Signed Up!')
end

And(/^I wanna see some posts$/) do
  within "nav" do
    click_link 'Beiträge'
  end
end

Then(/^I should be on login page$/) do
  assert page.has_content?('Please login first')
end