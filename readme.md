# reuk's dotfiles

## vim ide setup notes

AppCode seems to have got real slow lately, so I'm going to look at getting a sane cpp dev
environment working in nvim.

We're still building from Xcode projects, so we need a way to generate a complication database:

```
# install xcpretty
gem install xcpretty

# generate the database
xcodebuild -configuration Debug -alltargets | xcpretty -r json-compilation-database
```

Get ccls and coc.nvim up and working:

```
brew install ccls
```

I guess there's some python stuff we need too:

```
pip2 install --user pynvim clang neovim-remote
pip3 install --user pynvim clang neovim-remote
```
