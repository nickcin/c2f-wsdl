require "savon"

Given /^I want a new wsdl client$/ do
  @client = Savon::Client.new do
    wsdl.document = "http://www.w3schools.com/webservices/tempconvert.asmx?wsdl"
  end
end

When /^the user sends a fahrenheit request of (\d+)$/ do |f|
  #puts fahrenheit
  @response = @client.request :tem, :fahrenheit_to_celsius, body: { "Fahrenheit" => f }
  puts @response.to_hash
end
#@client.request :tem, :celsius_to_fahrenheit, body: { "Celsius" => "100" }



Then /^the user should get a celsius response of (\d+)$/ do |arg1|
  #puts @response.to_hash
  #expect(arg1).to eq(@response)
end



