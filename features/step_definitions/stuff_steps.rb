require "savon"

Given /^I want a new math wsdl$/ do
  @client = Savon::Client.new do
    wsdl.document = "http://192.168.1.106:8080/services/HelloWorld?wsdl"
  end
end

When /^I add "(.*?)" and "(.*?)"$/ do |arg1, arg2|
  @response = @client.request :add, body: { "one" => arg1, "two" => arg2 }
  puts @response
end

Then /^I should see "(.*?)"$/ do |arg1|
  puts @response.to_hash
  expect(arg1).to eq(@response.to_hash[:add_response][:add_return])
end



