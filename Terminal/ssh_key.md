# SSH Key Commands
Create new ssh key
```zsh
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```
Find ssh key
```zsh
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_ed25519.pub
cat ~/.ssh/id_<key-type-here>.pub
```
List all ssh keys
```zsh
ls ~/.ssh/*.pub
```
Copy ssh key
```zsh
pbcopy < ~/.ssh/id_rsa.pub
```
