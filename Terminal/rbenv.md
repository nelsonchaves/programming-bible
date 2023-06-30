List all available versions
```zsh
rbenv install -l
```
To install Ruby and set the default version, we'll run the following commands:
```zsh
rbenv install 3.2.2
rbenv global 3.2.2
```
Confirm the default Ruby version matches the version you just installed.
```zsh
ruby -v
```
To uninstall
```zsh
rbenv uninstall 2.2.1
```
See installed versions
```zsh
rbenv versions
```
See current version
```zsh
rbenv version
```
Display path to executable
```zsh
rbenv which <NAME>
```
Re-write binstubs
```zsh
rbenv rehash
```