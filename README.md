# My Dotfiles
These are my dotfile configuration files for different software in Bash.

## .nanorc
This is my custom .nanorc configuration for Nano.

## .bashrc
This is my custom .bashrc configuration for Bash.



## Files and What They Do

### **`./bin/linux.sh`**
- This script sets up a Linux environment by:
  - Checking if the operating system is Linux. If not, it logs an error in `linuxsetup.log` and exits.
  - Creating a `.TRASH` directory in your home folder if it doesn’t already exist.
  - Backing up any existing `.nanorc` file by renaming it to `.bup nanorc` and logging that action.
  - Replacing your `.nanorc` file with the system-wide `/etc/nanorc` file.
  - Adding a line to your `.bashrc` file to source additional configurations.

### **`./bin/cleanup.sh`**
- This script undoes the changes made by `linux.sh`. Specifically, it:
  - Deletes the `.nanorc` file created during setup.
  - Removes the line added to your `.bashrc` file.
  - Deletes the `.TRASH` directory from your home folder.

### **`Makefile`**
- Automates running the setup and cleanup scripts:
  - **`linux` target**: Runs the cleanup script first to reset the environment, then executes the setup script.
  - **`clean` target**: Just runs the cleanup script to undo any changes.

### **`.nanorc`**
- A configuration file for the `nano` text editor. It’s overwritten by `linux.sh` using the system’s `/etc/nanorc`, so it includes things like syntax highlighting.

### **`.bashrc custom`**
- A custom configuration file sourced by your `.bashrc`. It’s used to add or tweak shell settings, like aliases or environment variables.

### **`linuxsetup.log`**
- A log file created by `linux.sh`:
  - Records any errors (like if you’re not on Linux).
  - Logs when `.nanorc` is backed up to `.bup nanorc`.
