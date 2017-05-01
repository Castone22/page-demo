Given(/^I am on Amazon's home page$/) do
  visit AmazonHomePage
end

When(/^I submit a search for "([^"]*)"$/) do |term|
  @term_searched = term
  @current_page.search_for term
end


Then(/^I should see results for that query\.$/) do
  expect(@current_page.results_element.text.downcase).to include @term_searched
end