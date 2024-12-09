#!/bin/bash  # Add the shebang for bash at the top of the script.

# Check if the operating system type is 'Linux'.
if [[ $(uname) != "Linux" ]]; then
    echo "Error: This script is designed for Linux systems only." >> linuxsetup.log  # Log the error message to linuxsetup.log.
    exit 1  # Exit the script if the OS is not Linux.
fi

# Create the '.TRASH' directory in the home directory if it doesn't exist.
if [[ ! -d "$HOME/.TRASH" ]]; then
    mkdir "$HOME/.TRASH"  # Create the directory.
fi

# Check if the '.nanorc' file exists in the home directory.
if [[ -f "$HOME/.nanorc" ]]; then
    mv "$HOME/.nanorc" "$HOME/.bup nanorc"  # Rename the file to '.bup nanorc'.
    echo "The current .nanorc file was renamed to '.bup nanorc'." >> linuxsetup.log  # Log this action.
fi

# Redirect the contents of '/etc/nanorc' to a new '.nanorc' file in the home directory.
cat /etc/nanorc > "$HOME/.nanorc"  # Overwrite the contents.

# Add a custom source line to the end of the '.bashrc' file in the home directory.
echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"

