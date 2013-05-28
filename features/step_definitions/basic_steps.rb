Given /^I am testing "(.+)"$/ do |app|
  ENV["APP_RU"] = app
end

When /^I get for "(.+)"$/ do |url|
  get url
end

Then /^I should have status (\d+)$/ do |sc|
  last_response.status.should eq(sc.to_i)
end

Then /^I should see "(.+)"$/ do |text|
  last_response.body.should match(/#{text}/)
end

