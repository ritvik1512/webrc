webrc
===
<p align="center">
Search the web via the Command Line = minimal distraction (HelllYeah!) </p>
<p align="center">
Demo: https://www.youtube.com/watch?v=ir2pVi0Yaew</p>
<p align="center">
Built in 2 hours. (Extremely simple) </p>

Features
--------
+ Written entirely in Ruby
+ Extremely simple script
+ Works on OSX and Linux (Apple and Linus fans rejoice!)
+ Complete internet in the CLI
+ Minimal Distraction = More Productivity!
+ Plan to add commandline browser support.(No need to leave the terminal ever!)

Installation
------------
```sh
gem install webrc
```
Simple and sleek. (Version 1.0.1 right now.) (RubyGems)

Listen up, If you're not on OSX you need to have ```xdg-open``` installed.

Usage
-----
Demo: https://www.youtube.com/watch?v=ir2pVi0Yaew

The `gem install` establishes the command `webrc` which you can use, directly in your shell.

```sh
webrc [query]                                 Does a Google search
webrc -so/--stack [query]                     Search on StackOverflow (HellYeah!)
webrc -wiki/--wikipedia [query]               Search Wikipedia
webrc -yt [query]                             Does an YouTube search
webrc -i [query]                              Does a Google Images search
webrc -wa/--wolfram                           Search something on Wolfram Alpha

```
Update
------
`$ gem update webrc`


### Examples
To search Stack Overflow for How do I write HelloWorld in C++?

    $ webrc -so How do I write HelloWorld in C++?

#### Version
Current- 1.0.2
All- 1.0.0, 1.0.1, 1.0.2

## Contributing

I <3 issue submissions, and will try to address your problem as quickly as possible!

If you want to write code:

1. Fork the repository
2. Create your feature branch (`git checkout -b my-slick-feature`)
3. Commit your changes (`git commit -am 'add some feature'`)
4. Push to your branch (`git push origin my-slick-feature`)
5. Create a new Pull Request

## Contributors:
+ [Jon Khaykin](https://github.com/jkhaykin) - Added WolframAlpha support.

### What's more to come?

+ More deeper and efficient integration into CLI, and probably eliminating the browser itself.
+ More native look and feel
+ Adding support for Reddit, HackerNews and ProductHunt!

Author: Ritvik Choudhary twitter.com/ritvikc1512
