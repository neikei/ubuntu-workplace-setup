## ubuntu-workplace-setup

My software stack for the daily business on my preferred OS [Ubuntu Gnome](https://ubuntugnome.org/).

### Included software
- vim
- curl
- wget
- htop
- shutter
- keepassx
- chromium
- opera
- thunderbird
- git
- gcm
- remmina
- atom
- visual studio code
- virtualbox
- vagrant
- pgadmin
- dbeaver
- seafile
- spotify
- zsh

### Requirements

- Ubuntu >= 16.04
- unzip ( Installation: sudo apt install unzip )

### Installation

1. wget https://github.com/neikei/ubuntu-workplace-setup/archive/master.zip
2. unzip master.zip
3. cd ubuntu-workplace-setup-master
4. ./setup.sh
```
SUDO password:
What is your Git username?:
What is your Git email?:
Do you need standard tools? (vim, curl, wget, htop, shutter, keepassx, thunderbird) [y/N]:
Do you need development tools? (git, gcm, remmina, virtualbox, vagrant) [y/N]:
Do you need pgAdmin [1] or DBeaver [2]? [1,2,N]:
Do you need Atom [1] or Visual Studio Code [2]? [1,2,N]:
Do you need Chromium [1] or Opera [2]? [1,2,N]:
Do you need Seafile? [y/N]:
Do you need Spotify? [y/N]:
Do you need zsh as default shell? [y/N]:

```

### Vagrantbox for testing

1. vagrant up
2. vagrant ssh
3. cd /vagrant
4. ./setup.sh

GUI access
- User: vagrant
- Password: vagrant
