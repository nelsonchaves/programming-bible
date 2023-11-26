## Bundler Commands

Bundler is an essential tool for managing Ruby gem dependencies in your projects. Here's a clear and concise breakdown of its main commands, along with some additional useful ones:

#### Installing Dependencies with `bundle install`
- **Purpose:** Installs all gems in your `Gemfile`.
- **Version Control:** Adheres to versions in `Gemfile.lock`, if present.
- **First-time Setup:** Creates `Gemfile.lock` for consistent versions.

  ```zsh
  bundle install
  ```

#### Quick Installation with `bundle`
- **Function:** Shortcut for `bundle install`.
- **Usage:** For quick installations.

  ```zsh
  # Equivalent to `bundle install`
  bundle
  ```

#### Updating Gems with `bundle update`
- **Function:** Updates gems as per `Gemfile` constraints.
- **Whole Project Update:** Updates all gems without specified arguments.

  ```zsh
  bundle update
  ```

#### Updating Specific Gems
- **Selective Update:** Updates named gems.
- **Example:** Update `nokogiri` and `puma`.

  ```zsh
  bundle update nokogiri puma
  ```

#### Checking for Outdated Gems with `bundle outdated`
- **Purpose:** Lists gems with newer versions available.
- **No Changes Made:** Just for checking, no updates performed.

  ```zsh
  bundle outdated
  ```

#### Running Commands with `bundle exec`
- **Purpose:** Runs a command within the bundle's context.
- **Usage:** Ensures only gems in your `Gemfile` are used.

  ```zsh
  bundle exec [command]
  ```

#### Adding a Gem with `bundle add`
- **Purpose:** Adds and installs a gem to your `Gemfile`.
- **Usage:** Simplifies adding new gems.

  ```zsh
  bundle add [gem-name]
  ```

#### Initializing a New Gemfile with `bundle init`
- **Purpose:** Creates a basic `Gemfile`.
- **Usage:** For starting new projects.

  ```zsh
  bundle init
  ```

#### Checking Dependencies with `bundle check`
- **Purpose:** Verifies if `Gemfile` dependencies are met.
- **Usage:** For quick dependency checks.

  ```zsh
  bundle check
  ```

#### Configuring Bundler Settings with `bundle config`
- **Purpose:** Sets or retrieves Bundler configuration options.
- **Usage:** Customizes Bundler behavior.

  ```zsh
  bundle config [name] [value]
  ```

#### Listing Installed Gems with `bundle list`
- **Purpose:** Shows all gems in the bundle.
- **Usage:** For overviewing current gem versions.

  ```zsh
  bundle list
  ```

#### Cleaning Up Unused Gems with `bundle clean`
- **Purpose:** Removes unused gems from bundler directory.
- **Usage:** Frees up disk space.

  ```zsh
  bundle clean --force
  ```
