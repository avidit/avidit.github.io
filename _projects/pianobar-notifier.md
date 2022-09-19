---
layout: project
title: pianobar-notifier
repository_url: https://github.com/avidit/pianobar-notifier
---

# pianobar-notifier
Terminal notifications for [pianobar](https://github.com/PromyLOPh/pianobar)

![notification](../master/notification.png)

Using pianobar's `eventcmd` interface, 
this script uses [terminal-notifier](https://github.com/julienXX/terminal-notifier) 
to pop up notifications for **Now Playing!**

## Installation
* Copy the `pianobar-notifier.rb` script to `~/.config/pianobar/`
* Make `pianobar-notifier.rb` executable with `chmod 755 pianobar-notifier.rb`
* Add the following line to Pianobar config file `~/.config/pianobar/config`

	`event_command = ~/.config/pianobar/pianobar-notifier.rb`

If you don't have above directory or file, go ahead and create. For more information take a look at
[pianobar config file] (https://github.com/PromyLOPh/pianobar/blob/master/contrib/config-example)

## Requirements
* [Ruby] (https://www.ruby-lang.org)
* [Pandora account] (http://www.pandora.com/account/register) 
* [pianobar] (https://github.com/PromyLOPh/pianobar)
* [terminal-notifier] (https://github.com/julienXX/terminal-notifier) 