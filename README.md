# mct-rd-salesforce

Gem that provide integration to salesforce. Enabling the create, update, read and destroy a person as a lead.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mct-rd-salesforce'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mct-rd-salesforce

## Usage

require 'mct-rd-salesforce'

Need to create auth params:

auth_params
{ 
	"username" => "your_username", 
	"password" => "your_password", 
	"security_token" => "your_security_token", 
	"client_id" => "your_client_id", 
	"client_secret" => "your_client_id" 
}

#Load

To load all leads from your salesforce account:

MctRdSalesforce::Lead.new.load(auth_params)

#Get

To get a specific lead from your salesforce account:

MctRdSalesforce::Lead.new.get(lead_id, auth_params)

#Create

To create a lead on your salesforce account:

Lead object

{
	"name": firstname,
	"lastName": lastname,
	"email": email,
	"company": company,
	"website": website,
	"jobTitle": jobtitle,
	"phone": phone,
}

MctRdSalesforce::Lead.new.create(auth_params, lead_object)

#Update

To update a lead from your salesforce account:

Lead object

{
	"id": id,
	"name": firstname,
	"lastName": lastname,
	"email": email,
	"company": company,
	"website": website,
	"jobTitle": jobtitle,
	"phone": phone,
}

MctRdSalesforce::Lead.new.update(auth_params, lead_object)

#Destroy

To destroy a specific lead from your salesforce account:

MctRdSalesforce::Lead.new.destroy(lead_id, auth_params)

##Test

To run the tests, just execute:

rake test

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/marcoscastrot/mct-rd-salesforce. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

