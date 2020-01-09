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

<img src="https://user-images.githubusercontent.com/25696312/72089341-dde0a300-32d9-11ea-818d-3f27de8b12e5.png" alt="agendrix logo" height="45">

[Agendrix](http://www.agendrix.com) is a team of passionate on a mission to create more pleasant and productive workplaces with innovative software, an exceptional team and unparalleled customer service.

## License

This project is © [Agendrix](http://www.agendrix.com). It is free software and may be redistributed under the terms specified in the LICENSE file.
