### Ruby Versions with rbenv

`rbenv` is a tool that helps you manage multiple Ruby environments. Here’s a simplified guide to using `rbenv` effectively:

#### Listing All Available Ruby Versions

To see all the Ruby versions you can install:

```zsh
# List available Ruby versions
rbenv install -l
```

#### Installing and Setting a Default Ruby Version

To install a specific Ruby version and set it as the default:

```zsh
# Install a specific Ruby version
rbenv install 3.2.2

# Set the installed version as the default
rbenv global 3.2.2
```

#### Confirming the Ruby Version

Verify the currently active Ruby version:

```zsh
# Check the current Ruby version
ruby -v
```

#### Uninstalling a Ruby Version

To remove an installed Ruby version:

```zsh
# Uninstall a specific Ruby version
rbenv uninstall 2.2.1
```

#### Viewing Installed Ruby Versions

To see which Ruby versions are installed:

```zsh
# List installed Ruby versions
rbenv versions
```

#### Checking the Current Ruby Version

To find out the Ruby version in use in the current shell:

```zsh
# Display the current Ruby version
rbenv version
```

#### Locating Executables

To find the path of an executable for the current Ruby version:

```zsh
# Display path to a Ruby executable
rbenv which <NAME>
```

#### Switching Between Ruby Versions

To change the Ruby version in your current shell session:

```zsh
# Switch to a specific Ruby version in the shell
rbenv shell 3.1.2
```

#### Updating System Binaries

After installing new versions of Ruby or gems that provide binaries, run:

```zsh
# Rehash to update system binaries
rbenv rehash
```
