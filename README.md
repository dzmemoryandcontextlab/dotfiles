# dotfiles

Dotfiles for the Dimsdale-Zucker Memory and Context Lab.

# Installation

## OSX

Install Homebrew. Follow instructions [here](https://brew.sh/). During this installation, you will likely be forced to install XCode and accept the license - do this manually (if)/when prompted. 

Once Homebrew is installed successfully, in Terminal, it will suggest that you run two lines of code to add Homebrew to the $PATH. Follow these instructions before continuing on (you will not see any output/success of this command, but it's technically re-setting values).

Once XCode is installed and the license is accepted, run the following (this is written as a shell script that can be run in a single go, or you could also run line-by-line in Terminal):

```sh

brew install git
mkdir -p ~/workspace
git clone https://github.com/dzmemoryandcontextlab/dotfiles ~/workspace/dotfiles
cd ~/workspace/dotfiles
./install
```

Note, that you're likely to be asked for your password for various parts of these install scripts. 

### Manual steps

Once the above script is complete, there are some one-time steps that need to be done:

#### For any shared computers (e.g., testing computers)

* In Chrome, turn off Google Password Manager
* Disable automatic software updates. [Here](https://support.examsoft.com/hc/en-us/articles/11145629796877-How-to-Disable-Automatic-Operating-System-Updates) is a recent set of instructions about how to do this on a Mac.
* Disable notifications (so that they don't interrupt participants). 
	* Navigate to System Preferences, Notifications. For each application, manually ensure "Allow Notifications" is turned off

#### iTerm terminal

* Open iterm2
* Go to preferences (`⌘` + `,`)
* Go to Profiles
* Select the default profile (likely the only one and hence already selected)
* Under **command** select `Custom Shell` in the drop-down and type `/opt/homebrew/bin/bash`
* If you want to have a dark background with light text:
	* Go to Appearance, General, Theme, and select `dark mode`
	* You will also need to go to Profiles, Default, and uncheck `colors`
* To increase the font size and setup fonts so that icons redner properly, go to Profiles, Text, Font. Select `Hack Nerd Font Mono` and increase the text size (Halle likes 14, but this is personal preference)

#### Setting up a per-machine ssh key

Run the following command to create the SSH keypair:

```sh
ssh-keygen -t ed25519 -C "$(hostname)" -N '' -f ~/.ssh/id_ed25519
```

Read the public key:

```
cat ~/.ssh/id_ed25519.pub
```

If you're setting up a lab computer, then give this value to HDZ (e.g. over email, slack, etc) so she can add it to the GitHub organization. It is not secret so don't worry about sharing it.

If you're using dotfiles to setup a personal workstation in lab, then you should add this SSH key to your own GitHub account.
