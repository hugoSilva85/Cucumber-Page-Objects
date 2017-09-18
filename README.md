# Automation tests

Automation of Moip API's and Moip my account, using the BDD framework Cucumber to provide documentation to automated tests.

## Dependencies

* Ruby 2.2.0

### Recommendations

* Use Rbenv to handle rubies and gemsets

  * See installation instructions here (https://github.com/rbenv/rbenv)
  
* Install bundler

            $ gem install bundler

* Project Installation

            $ bundle install

* Run features

            $ bundle exec cucumber features/ (for all features and scenarios)

                                        or

            $ bundle exec cucumber features/<name_feature> (for specific feature)
