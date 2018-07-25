![](https://raw.githubusercontent.com/solidusio/solidus/master/solidus.png)

- [solidus.io](http://solidus.io/)
- [Documentation](https://guides.solidus.io)
- [Join our Slack](http://slack.solidus.io/) ([solidusio.slack.com](http://solidusio.slack.com))
- [solidus-security](https://groups.google.com/forum/#!forum/solidus-security) mailing list
- [Supported Solidus extensions](http://extensions.solidus.io/)

## solidus_cmd

solidus_cmd is a command line utility for creating extensions for the [Solidus ecommerce platform](https://github.com/solidusio/solidus). 

## Getting started

Install the gem!

```bash
$ gem install solidus_cmd
```
Create your Solidus extension with the `solidus extension` command.

```bash
$ solidus extension my_extension
```

A Solidus extension is bundled as a Ruby gem, so be sure to update your `.gemspec` file.

You can now load your extension in your Solidus project's Gemfile.

## Questions?

The best way to ask questions is via the [#support channel on the Solidus Slack](https://solidusio.slack.com/messages/support/details/).

## Tests

We use [RSpec](http://rspec.info) for tests. Ideally all PRs include tests!


## Contributing

Solidus is an open source project and we encourage contributions. 
