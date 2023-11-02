# Boaw
[![Build Status](https://github.com/leonovk/boaw/actions/workflows/ruby.yml/badge.svg)](https://github.com/leonovk/boaw/actions/workflows/ruby.yml) ![Gem](https://img.shields.io/gem/dt/boaw) [![Gem Version](https://badge.fury.io/rb/boaw.svg)](https://badge.fury.io/rb/boaw)

Mouse manipulation library

### Description

The library will allow you to create auto-clickers for Unix systems. This library allows you to perform automatic mouse manipulations. It is essentially a wrapper over xdotool. Therefore, you will need it for the normal operation of the gem.

### Requirements

You need the xdotool library. You can install it using the command from the example below.

```sudo apt install xdotool```

*WARNING:* The library may not work correctly in Wayland

### Installation

```ruby
gem 'boaw'
```
And then execute:

```bundle install```

Or install it yourself as:

```gem install boaw```

Require if necessary:

```ruby
require 'boaw'
```

### Usage

You can use the library to create various auto-clickers.

```ruby
boaw = Boaw.new
position = boaw.position # current mouse position {x:1,y:2}
boaw.left_click(position) # clicks with the left mouse button
boaw.right_click(position) # clicks with the right mouse button
```

An example of a simple autoclicker that will allow you to always stay online in any messenger

```ruby
require 'boaw'

mouse = Boaw.new

loop do
  # get current position
  position = mouse.position
  # click at position
  mouse.left_click(position)
  sleep 3
end
```
