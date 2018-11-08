#!/bin/sh

# define system brews to be installed
brews=(
    php71
    composer
    mysql
    mongodb
    node
    ruby
    rbenv
)

# install specified system brews
for brew in "${brews[@]}"
    do brew install $brew
done

# To launch Brew Services on startup like mysql type
# ------------------------------------------>
# brew services start mysql
