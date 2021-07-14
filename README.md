# round-numbers.kak

*round-numbers* is a plugin for [Kakoune][1] text editor that rounds up a decimal number up to a certain number of decimal places.


## Installation

Installation can be done, e.g., with plug.kak plugin manager or manually. With plugin manager
```kak
plug "StatPal/round-numbers.kak"
```
Then reload Kakoune config or restart Kakoune and run `:plug-install`.


## Usage

This plug-in takes one parameter - the number of digits which is expresses after decimal places.
The default difits after the decimal place is 3.
To use this plug-in, select the required region and then type
```kak
:round-numbers
```

[1]: https://github.com/mawww/kakoune
