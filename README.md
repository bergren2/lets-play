# lp-pokemon-blue

A quick reference guide I threw together to help me with my [Let's Play of Pokémon Blue](https://www.youtube.com/playlist?list=PLdXSy09brydzoqynDtibx_V8WDB1MULK2).
This site uses [Middleman](http://middlemanapp.com/) which we then host on
[GitHub Pages](https://pages.github.com/).

The relevant game data is initially populated by scraping [Bulbapedia](http://bulbapedia.bulbagarden.net)
with [Mechanize](https://github.com/sparklemotion/mechanize). You can read up on
the data gathering strategy [here](https://github.com/bergren2/lp-pokemon-blue/wiki/Collecting-Data).

## Setup

### Environment Prereqs

You should have the following minimally setup:

- [rbenv](https://github.com/sstephenson/rbenv)

### Initial Project Setup

    $ git clone git@github.com:bergren2/lp-pokemon-blue.git
    $ cd $_
    $ rbenv install
    $ gem install bundler
    $ bundle install --without scraping

If you need to use [Mechanize](https://github.com/sparklemotion/mechanize) to
gather additional data, do a normal `bundle install`.

## Development

Fire up

    $ middleman server

and you can see the site at [localhost:4567](http://localhost:4567).

## License

See LICENSE for additional details regarding this project EXCEPT for data
contained in the `_data` directory, which is &copy; Pokémon/Nintendo/Creatures Inc./GAME FREAK inc.
