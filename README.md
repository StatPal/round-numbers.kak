# round-numbers.kak

*round-numbers* is a plugin for [Kakoune][1] text editor that rounds up a decimal number up to a certain number of decimal places.


## Installation

Installation can be done, e.g., with plug.kak [plugin manager][2] or manually putting the *.kak file inside the auload directory.

With plugin manager, you can simply add this line in your .kakrc file.
```kak
plug "StatPal/round-numbers.kak"
```
Then reload Kakoune config or restart Kakoune and run `:plug-install`.


## Usage

This plug-in takes one parameter - the number of digits after decimal places. The default is 3.
To use this plug-in, select the required region with the numbers and then type
```kak
:round-numbers 4
```
This is inspired mostly by [Screwtapello][3].

[1]: https://github.com/mawww/kakoune
[2]: https://github.com/andreyorst/plug.kak
[3]: https://gitlab.com/Screwtapello/kakoune-inc-dec
