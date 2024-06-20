# Homebrew

## Install everything that's in the Brewfile

This is what the `install` script at the root level of dotfiles assumes you want to do. You *could* separately just re-run the Homebrew install script at a later time without needing to re-run all of dotfiles (e.g., you might want to re-install the brew managed packages).

If that's what you're trying to do, from the `/homebrew` directory, simply:

```sh
./install
```

## Making changes to the packages for everyone who uses this repo

In order to make lab-wide changes to brew installed packages, run the following command from within this directory to update the Brewfile. This will sync the Brewfile with whatever packages are currently installed on this machine:

```sh
❯ brew bundle dump \
   --formula --cask --tap \
   --force
```

For these changes to persist, you would need to add, commit, and push them back to the repo.

## Machine-specific changes (i.e., that are not pushed back to the remote)

If you want to modify the packages that get brew installed for this machine only (e.g., you're using these lab-wide dotfiles as a starting point for your own lab computer), you can simply do that from the command line (e.g., `brew install <package-name>`). This will *not* update the Brewfile that's part of this repo and, thus, those changes will not persist in this repo and impact other users (or, future you). However, this likely shouldn't be an issue since re-running dotfiles, and, hence, re-installing what's in the Brewfile, won't remove the additional brew-installed packages you might have added locally.