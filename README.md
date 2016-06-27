Agendrix dotfiles
===

Mostly a set of zsh & git configuration files, running on OS X.

A lot of the stuff here is based on Ryan Bates, Thoughtbot and Holman dotfiles, thanks guys!

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/ryanb/dotfiles/blob/custom-bash-zsh/Rakefile) to see exactly what it does.

```
git clone https://github.com/agendrix/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install
```

After installing, open a new terminal window to see the effects.

Feel free to customize the .zshrc file to match your preference.

## Using your own config along

These dotfiles require this file:

```
~/.zshrc.local
```

Here you can add your own mapping without risking to lose them when updating the repo :)

## Uninstall

To remove the dotfiles configurations, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.bin
unlink ~/.gitignore
unlink ~/.gemrc
unlink ~/.irbrc
rm ~/.zshrc
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `gitignore-addons`)
3. Write you change
4. Submit a Pull Request

## About

Agendrix is small team of passionate who enjoy writing good code that solves interesting problems. We consider ourselves as friendly, hard workers and dynamic. We love to see things differently and strongly believe in progress and innovation.

At Agendrix, we use open source software a lot and that's why we try hard to share as much as possible.

## License

This project is © [Agendrix](http://www.agendrix.com) It is free software and may be redistributed under the terms specified in the LICENSE file.
