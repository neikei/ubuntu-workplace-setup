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
- gitg
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
- java
- gnome vpn extensions

### Requirements

- Ubuntu >= 16.04
- unzip ( Installation: sudo apt install unzip )

### Installation

1. wget https://github.com/neikei/ubuntu-workplace-setup/archive/master.zip
2. unzip master.zip
3. cd ubuntu-workplace-setup-master
4. ./setup.sh

```bash
SUDO password:
What is your Git username?: neikei
What is your Git email?: neikei@test.test
Do you need cli tools? (vim, curl, wget, htop) [y/N]: y
Do you need office tools? (shutter, keepassx, thunderbird) [y/N]: y
Do you need development tools? (git, gcm, remmina, virtualbox, vagrant) [y/N]: y
Do you need Gnome VPN extensions? [y/N]: y
Do you need pgAdmin [1] or DBeaver [2]? [1,2,N]: 12
Do you need Atom [1] or Visual Studio Code [2]? [1,2,N]: 12
Do you need Chromium [1] or Opera [2]? [1,2,N]: 12
Do you need Java? [y/N]: y
Do you need Seafile? [y/N]: y
Do you need Spotify? [y/N]: y
Do you need zsh as default shell? [y/N]: y
```

### Vagrantbox for testing

1. vagrant up
2. vagrant ssh
3. cd /vagrant
4. ./setup.sh

GUI access

- User: vagrant
- Password: vagrant

## Feedback, Issues and Pull-Requests

Feel free to report issues, fork this project and submit pull requests.