# nvm-fish

Wrap nvm _persistently_ for use with the fish shell.

There already exists the most excellent [Bass](https://github.com/edc/bass) for running bash scripts in fish.
However, I found this approach somewhat unsatisfactory as there was no preservation

nvm-fish is a set of functions that, in conjunction with bass, allow persistent setting of a node environment globally.

# Installation

## Using [Fundle](https://github.com/tuvistavie/fundle)

Add

    fundle plugin 'edc/bass'
    fundle plugin 'arzig/nvm-fish'

# Usage

nvm-fish defines a function, `nvm` that will proxy to an installed nvm using bass.
Environment variables will be replayed as universal variables, so running `nvm current` or `node` in a different shell will just work and use the expected version of node.

Use nvm

    nvm ls-remote
    nvm use 5.1.1
    # Install gulp globally for 5.1.1
    npm install -g gulp
