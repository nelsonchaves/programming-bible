### RVM Commands Guide

RVM (Ruby Version Manager) is a tool for managing Ruby environments and gemsets. Here’s a simple guide to creating a new gemset:

#### Creating a New Gemset

**The `rvm use` Command:** To create and switch to a new gemset for a specific Ruby version, use the `rvm use` command. For example, to create a gemset named "teddy" for Ruby version 3.1.2:

```zsh
# Create and use a new gemset named 'teddy' for Ruby 3.1.2
rvm use 3.1.2@teddy --create
```

This command simultaneously creates the gemset "teddy" and switches to it under Ruby version 3.1.2.
