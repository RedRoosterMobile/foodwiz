And(/^I subscribe with my credentials$/) do
  within 'nav' do
    click_link 'Anmelden'
  end
  user = build(:user)
  fill_in 'Email' , with: user.email
  fill_in 'Password' , with: user.password
  fill_in 'Password confirmation' , with: user.password
  click_button I18n.t('helpers.submit.send')
end

Then(/^I should be signed up$/) do
  assert page.has_content?('Signed Up!')
end

And(/^I wanna see some posts$/) do
  within 'nav' do
    click_link 'Beiträge'
  end
end

Then(/^I should be on login page$/) do
  assert page.has_content?('Please login first')
end

And(/^I submit invalid data$/) do
  user = build(:user, email:'brokenemail2')
  fill_in 'Email' , with: user.email
  fill_in 'Password' , with: user.password
  fill_in 'Password confirmation' , with: user.password
  click_button I18n.t('helpers.submit.send')
end

Then(/^I should get an error message$/) do
  assert page.has_content?('Diese Email ist ungültig')
end

And(/^I go to signup page$/) do
  within 'nav' do
    click_link 'Anmelden'
  end

end

When(/^I go to login page$/) do
  within 'nav' do
    click_link 'Einloggen'
  end
end

And(/^Fill in (my|wrong) credentials$/) do |arg|
  user = build(:user)
  fill_in 'Email' , with: user.email
  fill_in 'Password' , with: user.password
  click_button 'Log in'
end

Then(/^I should be logged in$/) do
  assert page.has_content?('Ausloggen')
end

Then(/^I should get a wrong credentials message$/) do
  assert page.has_content? 'Email or password was invalid.'
end

When(/^I log out$/) do
  click_link 'Ausloggen'
end

Then(/^I should be logged out$/) do
  click_link 'Einloggen'
end