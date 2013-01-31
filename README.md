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

Wanna test out a certain special progress animation?! 

Done:

    prog-me bouncing_ball

Will show a bouncing ball animation for 5 seconds. Hell, you could even wrap up your favorite command:

    prog-me tres_dots read

## Contributing

Submitting a new animation is easy:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Create a new JSON file in the art-and-farts directory that defines your animation (look at tres_dots.json to see the file's layout).
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request
