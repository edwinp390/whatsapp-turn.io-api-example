require "csv"
require "pry"
require 'faraday'
require "jsonl"

token = "your token"

response = Faraday.get('https://whatsapp.turn.io/v1/export/contacts/details?format=json') do |req|
  req.headers['Authorization'] = "Bearer #{token}"
end

contactlist = JSONL.parse(response.body)

CSV.open("contactslist.csv", "w") do |csv| #open new file for write
  csv <<  contactlist.first["fields"].keys
  contactlist.each do |hash| #open json to parse
    if !(hash["fields"].keys.include?("state"))
      hash["fields"]["state"] = nil
      csv <<  hash["fields"].sort.to_h.values
    else
      csv << hash["fields"].values #write value to file
    end
  end
end
