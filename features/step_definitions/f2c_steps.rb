require "savon"

#Given /^I want a new wsdl client$/ do
#  @client = Savon::Client.new do
#    wsdl.document = "http://www.w3schools.com/webservices/tempconvert.asmx?wsdl"
#  end
#end

When /^the user sends a fahrenheit request of (\d+)$/ do |f|
  @response = @client.request :tem, :fahrenheit_to_celsius, body: { "Fahrenheit" => f }
end

Then /^the user should get a celsius response of (\d+)$/ do |arg1|
  expect(arg1).to eq(@response.to_hash[:fahrenheit_to_celsius_response][:fahrenheit_to_celsius_result])
end



