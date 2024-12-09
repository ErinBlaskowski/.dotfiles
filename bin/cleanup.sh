#!/bin/bash  # Add the shebang for bash at the top of the script.

# Remove the '.nanorc' file from the home directory.
if [[ -f "$HOME/.nanorc" ]]; then
    rm "$HOME/.nanorc"  # Delete the .nanorc file.
fi

# Remove the line 'source ~/.dotfiles/etc/bashrc custom' from the '.bashrc' file in the home directory.
if [[ -f "$HOME/.bashrc" ]]; then
    sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc"  # Use 'sed' to remove the specific line.
fi

# Remove the '.TRASH' directory from the home directory.
if [[ -d "$HOME/.TRASH" ]]; then
    rm -r "$HOME/.TRASH"  # Recursively remove the .TRASH directory.
fi

