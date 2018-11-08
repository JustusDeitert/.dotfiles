#!/bin/sh

# define atom plugins
atomplugins=(
    language-apache
    color-picker
    autoclose-html
    linter-htmlhint
    grunt-runner
    terminal-status
    docblockr
    scssbundle
    stylus
    atom-ternjs
    minimap
)

# define atom appearance
atomskins=(
    neutron-ui
    neutron-syntax
    file-icons
)

# install atom packages
for plugin in "${atomplugins[@]}"
    do apm install $plugin
done

# install atom themes
for plugin in "${atomskins[@]}"
    do apm install $plugin
done
