### Simplified Guide to Bundler Commands

Bundler is a key tool for managing Ruby gem dependencies in your projects. Here's an easy-to-understand breakdown of its main commands:

#### Installing Dependencies with `bundle install`

- **Purpose:** Installs all the gems listed in your `Gemfile`.
- **Version Control:** Follows the versions specified in `Gemfile.lock` if it exists.
- **First-time Setup:** Creates `Gemfile.lock` if it's not present, ensuring consistent versions across environments.

  ```zsh
  bundle install
  ```

#### Quick Installation with `bundle`

- **Function:** A shortcut for `bundle install`.
- **Usage:** Use when you want to install dependencies quickly without typing the full command.

  ```zsh
  # Equivalent to `bundle install`
  bundle
  ```

#### Updating Gems with `bundle update`

- **Function:** Updates your gems within the constraints set in the `Gemfile`.
- **Whole Project Update:** Without arguments, it updates all gems to the latest possible versions allowed by the `Gemfile`.

  ```zsh
  bundle update
  ```

#### Updating Specific Gems

- **Selective Update:** You can update specific gems by naming them.
- **Example:** To update `nokogiri` and `puma` to their latest allowable versions:

  ```zsh
  bundle update nokogiri puma
  ```

#### Checking for Outdated Gems with `bundle outdated`

- **Purpose:** Lists gems that have newer versions available.
- **No Changes Made:** A safe way to check for updates without altering your project.

  ```zsh
  bundle outdated
  ```
