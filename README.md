# Gauges::Rails

[![Build Status][travis-image]][travis]

[travis]: https://travis-ci.org/tylerhunt/gauges-rails
[travis-image]: https://travis-ci.org/tylerhunt/gauges-rails.svg

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

While Gauges suggests placing this code right before the closing &lt/body&gt;
tag, if you'd rather add it inline with the rest of your JavaScript code, you
can add it to the bottom of your `app/assets/javascripts/application.js` file:

    //= require gauges

If you'd only like the tracking code to be included in the production
environment, create a file like `app/assets/javascripts/tracking.js.erb` with
the following:

    <% require_asset 'gauges' if Rails.env.production? %>


## Contributing

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Added some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create a new Pull Request.


## Credits

Thanks to [Jason Coene][jason] for creating the original version of this Gem.

[jason]: https://github.com/jcoene


## Copyright

Copyright © 2012 Tyler Hunt. See LICENSE for details.
