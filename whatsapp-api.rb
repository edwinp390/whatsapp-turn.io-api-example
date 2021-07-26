require "csv"
require "pry"
require 'json'
require 'faraday'
token = "your api token"

def send_message(message, profilename, token, whatsappid)
  response = Faraday.post('https://whatsapp.turn.io/v1/messages') do |req|
    req.headers['Content-Type'] = 'application/json'
    req.body =  {
         "preview_url": false,
         "recipient_type": "individual",
         "to": whatsappid,
         "type": "text",
         "text": {
             "body": message
           }
         }.to_json
         req.headers['Authorization'] = "Bearer #{token}"
       end
end
contactlist = CSV.read("contactslist.csv")[1 .. -1]
contactlist.each do |contact|
  whatsappid =  contact[7]
  profilename =  contact[8]
  language =  contact[1] || "ENG"
  message = "message you want to send"
  send_message(message, profilename, token, whatsappid)
end
