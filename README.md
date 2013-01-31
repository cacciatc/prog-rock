# ProgRock

Artistic, realistic, uselessly beautiful progressbars for your console.

## Installation

Add this line to your application's Gemfile:

    gem 'prog-rock'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prog-rock

## Usage

### Command line

Wanna test out a certain special progress animation?! 

Done:

```bash
prog-me bouncing_ball
```

Will show a bouncing ball animation for 5 seconds. Hell, you could even wrap up your favorite command:

```bash
prog-me tres_dots read
```

### Ruby

To use in your Ruby:

```ruby
require 'prog-rock'

c = ProgRock::Concert.new

# list all the available animations
c.ls

# play the fish animation updating each frame 0.2 seconds
c.play :fish, 0.2

# perform some long-running, back-breaking, family-making task here

```

## Contributing

Submitting a new animation is easy:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Create a new JSON file in the art-and-farts directory that defines your animation (look at tres_dots.json to see the file's layout).
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
