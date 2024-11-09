# homebrew-casks

[![Test](https://github.com/kjxbyz/homebrew-casks/actions/workflows/test.yml/badge.svg?branch=main)](https://github.com/kjxbyz/homebrew-casks/actions/workflows/test.yml)
[![Excavator](https://github.com/kjxbyz/homebrew-casks/actions/workflows/excavator.yml/badge.svg)](https://github.com/kjxbyz/homebrew-casks/actions/workflows/excavator.yml)
<!-- [![Add version](https://github.com/kjxbyz/homebrew-casks/actions/workflows/version.yml/badge.svg)](https://github.com/kjxbyz/homebrew-casks/actions/workflows/version.yml) -->

## Casks

- picguard
- fafarunner

## Install

`brew install kjxbyz/casks/<cask>`

Or `brew tap kjxbyz/casks` and then `brew install <cask>`.

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "kjxbyz/casks"
brew "<cask>"
```

## Debug

`brew audit --strict --fix --cask <cask>`

`brew livecheck --debug <cask>`

## Documentation

Your taps are Git repositories located at `$(brew --repository)/Library/Taps`

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
