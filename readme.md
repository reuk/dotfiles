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

Get YCM set up and working (neovim requires python stuff to be set up)

```
pip2 install --user pynvim
pip3 install --user pynvim
```
