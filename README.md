# OnConnect

Gem that helps connect OnConnect api

## Installation

Add this line to your application's Gemfile:

    gem 'on_connect'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install on_connect

## Usage

search for local movie theaters and listings of movies using a zip code and start date. You are able to set the radius of miles for the theater from 0 - 100. 

on_connect::Movie.search(zip, startDate, radius)


## Contributing

1. Fork it ( http://github.com/<my-github-username>/on_connect/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
