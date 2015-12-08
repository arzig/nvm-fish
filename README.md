# nvm-fish

Wrap nvm _persistently_ for use with the fish shell.

There already exists the most excellent [Bass](https://github.com/edc/bass) for running bash scripts in fish.
However, I found this approach somewhat unsatisfactory as there was no preservation of the currently set node version in other shells.
nvm-fish is a function that allows the setting of a persistent node version across sessions.
The effect is similar to that of using n (symlink management), however, no symlinks are necessary thanks to fish's awesomeness.

If nvm is not installed, you should be prompted to install it with `nvm_install`.
This should install nvm from github using either `curl` or `wget` if `curl` can't be found.

If you run into problems using nvm-fish, please open an issue or submit a pull a request and I'll gladly look into it as time permits.

# Installation

## Using [Fundle](https://github.com/tuvistavie/fundle)

Add

    fundle plugin 'arzig/nvm-fish'

to your ~/.config/fish/config.fish

# Usage

nvm-fish defines a function, `nvm` that will proxy to an installed nvm using bass.
Environment variables will be replayed as universal variables, so running `nvm current` or `node` in a different shell will just work and use the expected version of node.

Use nvm

    nvm install 5.1.1
    nvm install 0.12
    nvm use 5.1.1
    
    # In another shell
    # Install gulp globally for 5.1.1
    npm install -g gulp

# TODO

* Completions for nvm
