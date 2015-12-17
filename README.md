# nvm-fish

Provide a wrapper around nvm using bass.

# Installation

## Using [Fundle](https://github.com/tuvistavie/fundle)

Add

    fundle plugin 'arzig/nvm-fish'

to your ~/.config/fish/config.fish

# Usage

nvm-fish defines a function, `nvm` that will proxy to an installed nvm using bass.
You can just call nvm and it will work as you expect.
If you don't have nvm installed you will be prompted to install it using `nvm_install` which
will execute the nvm installation using curl or wget if curl is not available.

# TODO

* Completions for nvm
