# SSH Key Commands
Create new ssh key
```ruby
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```
Find ssh key
```ruby
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_ed25519.pub
cat ~/.ssh/id_<key-type-here>.pub
```
List all ssh keys
```ruby
ls ~/.ssh/*.pub
```
Copy ssh key
```ruby
pbcopy < ~/.ssh/id_rsa.pub
```
