# ConcernedValidations

### Isolate and automate your Rails validations.

Instead of adding validations in your model or concerns, put them in a `ConcernedValidation` class for each attribute. They'll then me picked up and used automatically.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'concerned_validations'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install concerned_validations

## Usage

Create a Validator with the same name as your model, and it will be included automatically.

```ruby
class User < ActiveRecord::Base
  include ::ConcernedValidations::Model
end

module UserValidator
  extend ::ConcernedValidations::Base

  validator do
    validates :name, presence: true
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/joelmoss/concerned_validations. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/joelmoss/concerned_validations/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ConcernedValidations project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/joelmoss/concerned_validations/blob/master/CODE_OF_CONDUCT.md).
