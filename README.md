# Gauges::Rails

A Rails engine to add [Gauges][] tracking code to Rails apps.

[gauges]: http://gaug.es/


## Installation

Add this line to your application's Gemfile:

    gem 'gauges-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gauges-rails


## Configuration

Set your Gauges site ID in the `config/application.rb` file:

    config.gauges.site_id = GAUGES_SITE_ID

Your site ID can be found on the Gauges dashboard under "Tracking Code".


## Usage

Include the JavaScript tracking code at the bottom of your layout template:

    <%= javascript_include_tag('gauges') %>

Or, if your template is using Haml:

    = javascript_include_tag('gauges')


## Contributing

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Added some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create a new Pull Request.


## Copyright

Copyright © 2012 Tyler Hunt. See LICENSE for details.
