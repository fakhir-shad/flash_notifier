# FlashNotifier

If you are tired of integrating flash messages in your rails application over and over again then this gem is for you!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flash_notifier'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flash_notifier

## Usage

### For Bootstrap Flash Messages
    
Add this helper method in your layout and leave rest to the gem!

    <%= build_bootstrap_flash %>
    
### For other two libraries follow following steps            

#### Step 1: Choose a Library Noty JS or Toastr JS

#### For Noty JS 3.1.4 ([Official Website](https://ned.im/noty/#/))

Import noty library in your application.js

    //= require noty_lib
    
Add noty stylesheet in your application.scss

    @import "noty";
    
#### For Toastr JS 2.1.4 ([Official Website](https://codeseven.github.io/toastr/))

Import noty library in your application.js

    //= require toastr_lib
    
Add noty stylesheet in your application.scss

    @import "toastr.min";
    
### Step 2
    
In your layout add this helper method

    <%= build_flash %>
    
### Optional Step 3: Pass options to helper method  

For Onscreen positioning of flash message pass param

    <%= build_flash placement: 'topRight' %>
    
To manage progress bar pass param

    <%= build_flash progress_bar: true %>
    
To set auto hide timeout pass param

     <%= build_flash timeout: 3500 %>
     
To set default theme pass param (Note this param works only for Noty JS)

     <%= build_flash theme: 'mint' %>
    
##### Values for these params can be found here [Noty JS](https://ned.im/noty/#/options), [Toastr JS](https://codeseven.github.io/toastr/demo.html)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/fakhir-shad/flash_notifier](https://github.com/fakhir-shad/flash_notifier). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FlashNotifier project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/flash_notifier/blob/master/CODE_OF_CONDUCT.md).
