# dotfiles

Dotfiles for the Dimsdale-Zucker Memory and Context Lab.

# Installation

## OSX

Install Homebrew. Follow instructions [here](https://brew.sh/). During this installation, you will likely be forced to install XCode and accept the license - do this manually when prompted.

Once XCode is installed and the license is accepted, run the following (this is written as a shell script that can be run in a single go, or you could also run line-by-line in Terminal):

```sh
brew install git
mkdir -p ~/workspace
git clone https://github.com/dzmemoryandcontextlab/dotfiles ~/workspace/
cd ~/workspace/dotfiles
./install
```