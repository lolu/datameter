# Datameter

This is a simple ruby library for getting your internet data balance. 

It works by programmatically visting your ISP's web portal, filling the login form and scraping the data balance off the page.

It currently works for just Spectranet, but the plan is to include other ISP's.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'datameter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install datameter

## Usage

.. code-block:: ruby

    require 'datameter'
	data_balance = Datameter.get_data_balance('spectranet', 'userid', 'password')


## Contributing

1. Fork it ( https://github.com/[my-github-username]/datameter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
