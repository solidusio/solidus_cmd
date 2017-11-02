Solidus cmd
===========

Command line utility to create new Solidus extensions

See the main solidus project: https://github.com/solidusio/solidus

To build a new Solidus Extension, you can run
```ruby
solidus extension my_extension
```

after you have globally installed the gem outside of your project folder:

```
gem install solidus_cmd
```

This will create a folder `solidus_my_extension` containing default content to
let you start writing your own extension.

Please update the .gemspec file with author, description, summary and email.
Then you can run

```
bundle install
```

You can follow a tutorial in the [spree documentation](https://guides.spreecommerce.org/developer/extensions_tutorial.html#creating-an-extension)
