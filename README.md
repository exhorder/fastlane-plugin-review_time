# Fastlane review_time plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-review_time)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-review_time`, add it to your project by running:

```bash
fastlane add_plugin review_time
```

## About review_time

Fetches live iOS and macOS review times from appreviewtimes.com. For use in CI systems, Slack hooks, or whatever else you feel like.
To get the current review time for iOS simply run:
```
review_time
```

You can also fetch the review time for macOS by running:
```
review_time platform:macos
```
## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository, or @timwredwards.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
