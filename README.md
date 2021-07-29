# Introduction
These are two scripts one sends pulls down contacts and saves them as a CSV.
Second script will pull the CSV file to send messages to those contacts

This uses the Turn.io [Messages](https://whatsapp.turn.io/docs/index.html#messages) and [Contacts](https://whatsapp.turn.io/docs/index.html#turn-contact-profile-api) API endpoints.

# Getting Started
```
gem install jsonl
gem install faraday
```
create a config.yml file in the root directory
Generate a [token](https://learn.turn.io/for-developers/how-to-access-message-template-api-details).
Then add that token to the config.yml file
Then run whatsapp-contacts.rb which should generate CSV file
Then whatsapp-api.rb will use the CSV file to message those in it
Use the following commands:

```
ruby whatsapp-contacts.rb  
ruby whatsapp-api.rb
```

# What this file does: <h1>
### Ruby script generates API requests to Turn.io <h3>
### Turn.io will then send a message via Whatsapp <h3>
### whatsapp-api.rb file uses 4 strings to include in message <h3>







# This is an <h1> tag
## This is an <h2> tag
###### This is an <h6> tag



*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__
*You **can** combine them*
