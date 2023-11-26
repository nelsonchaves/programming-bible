These commands are part of Bundler, a tool for managing Ruby gem dependencies. Here's a brief overview of what each command does:
- This command installs all the gems specified in your `Gemfile`, adhering to the versions in `Gemfile.lock` if it exists.
- If `Gemfile.lock` doesn't exist, Bundler resolves the dependencies from scratch and creates this file.
```zsh
bundle install
```

- Running `bundle` without any subcommands is the same as running `bundle install`.
```zsh
# short for `bundle install`
bundle
```

- This command updates your gems to the latest versions that still match the constraints in your `Gemfile`. 
```zsh
bundle update
```

This command will update the nokogiri and puma gems to the latest versions that are compatible with the other gems in your project as specified in your Gemfile. 
```zsh
bundle update nokogiri puma
```

- This command lists all the gems in your project that have newer versions available (based on the constraints in your `Gemfile`).
- It's useful for seeing which gems could be updated without actually performing the update.
```zsh
bundle outdated
```


