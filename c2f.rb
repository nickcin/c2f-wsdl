require "savon"



#client = Savon.client("http://www.w3schools.com/webservices/tempconvert.asmx?wsdl")
#Savon::Client.new("http://www.w3schools.com/webservices/tempconvert.asmx?wsdl")


<?xml version="1.0" encoding="utf-8"?>
  <soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
     <FahrenheitToCelsiusResponse xmlns="http://tempuri.org/">
       <FahrenheitToCelsiusResult>Error</FahrenheitToCelsiusResult>
      </FahrenheitToCelsiusResponse>
    </soap:Body>
  </soap:Envelope>