# UltraPending

Are you totally over the tired old process of weeding pending tests out of your projects? This, my good friend, may be the solution to all of your problems.

By injecting `UltraPending` into your test suite's environment, your "pending" tests will begin showing a better behavior when tests are run: they will fail.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ultra_pending'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ultra_pending

## Usage

To use this gem, you'll basically want to include/extend it into your test suite's example context. Handy shortcuts are already provided for both RSpec and Cucumber:

```ruby

# In, for example, your spec/spec_helper.rb ...
require 'ultra_pending/rspec'

# In, for example, your features/support/env.rb ...
require 'ultra_pending/cucumber'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/ess/ultra_pending/fork )
2. Ensure that you're basing off of develop (`git checkout develop`)
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request
