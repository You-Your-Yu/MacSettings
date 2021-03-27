# mac-settings
Automatically install useful tools using Ansible.

## Usage
1. install homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
2. install ansible
```
brew install ansible
```
3. enable ssh access to github.com
```
ssh-keygen
chmod 600 ~/.ssh/id_rsa
(and register ~/.ssh/id_rsa.pub to github.com)
```
4. run ansible
```
git clone https://github.com/yuyamada/mac-settings.git
cd mac-settings
ansible-playbook -i localhost site.yml --ask-become-pass
```
