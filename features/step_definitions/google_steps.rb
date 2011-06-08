
Given /^I'm on the google homepage$/ do
  visit 'http://google.com.au'
  # Let people see its worked before the browser is closed
  sleep 5
end