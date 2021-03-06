When(/^I click "(.*?)"$/) do |arg1|
  click_button(arg1)
end

Then(/^the calendar should be on the screen$/) do
  regexp = Regexp.new('/calendar')

  if page.respond_to? :should
    page.should have_xpath('//*', :text => regexp)
  else
    assert page.has_xpath?('//*', :text => regexp)
  end
end

