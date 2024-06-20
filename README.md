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

### Manual steps

Once the above script is complete, there are some one-time steps that need to be done:

#### iTerm terminal

* Open iterm2
* Go to preferences (`⌘` + `,`)
* Go to Profiles
* Select the default profile (likely the only one and hence already selected)
* Under **command** select `Custom Shell` in the drop-down and type `/opt/homebrew/bin/bash`

#### Setting up a per-machine ssh key

Run the following command to create the SSH keypair:

```sh
ssh-keygen -t ed25519 -C "$(hostname)" -N '' -f ~/.ssh/id_ed25519
```

Read the public key:

```
cat ~/.ssh/id_ed25519.pub
```

Give this value to HDZ (e.g. over email, slack, etc) so she can add it to the GitHub organization. It is not secret so don't worry about sharing it.
