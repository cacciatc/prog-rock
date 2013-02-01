# ProgRock

I like using the terminal as much as the next guy, but is there a reason we can't spice it up?
Even just a little? 

Well, I don't know about you, but when I think "spice things up" I think "ASCII art animations". 
So here it is, the terminal spice you've been looking for. 
European traders brought it back from half-way around the world. __Just. For. You.__

Oh, and next time you start thinking, "Why the hell am I using this silly gem to put silly ASCII animations in my app?"

__Remember__:

* It's kinky. 
* It's cool. 
* It probably won't work on windows.

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
(*---------)
(-*--------)
(--*-------)
# but of course the animation would run in place
```

Will show a bouncing ball animation for 5 seconds (I really should make some GIFs to demo). Hell, you could even wrap up your favorite command:

```bash
prog-me tres_dots read
.
..
...
# but of course the animation would run in place
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
sleep 10
```

## Contributing

Submitting a new animation is easy:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Create a new JSON file in the art-and-farts directory that defines your animation (look at tres_dots.json to see the file's layout).
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
