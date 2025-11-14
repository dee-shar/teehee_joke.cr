# teehee_joke.cr
Web-API for [teehee.dev](https://teehee.dev/) a simple API that serves random jokes

## Example
```cr
require "./teehee_joke"

teehee_joke = TeeheeJoke.new
joke = teehee_joke.get_joke()
puts joke
```
