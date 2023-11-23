### Heroku CLI

The Heroku Command Line Interface (CLI) is a powerful tool to manage Heroku apps from your terminal. Here's a simplified guide to help you get started:

#### Logging into Heroku

First, log in to your Heroku account:

```zsh
# Log in to Heroku
heroku login
```

#### Setting Up the Procfile

Create a file named `Procfile` in your project's root directory. Inside it, specify how Heroku should run your app:

```zsh
# Content of the Procfile
web: bundle exec puma -C config/puma.rb
```

#### Creating a New App

To create a new app on Heroku:

```zsh
# Create a new Heroku app
heroku apps:create
```

#### Deploying to Heroku

Deploy your app to Heroku using Git:

```zsh
# Push your code to Heroku
git push heroku master
```

#### Migrating the Database

Run database migrations on Heroku:

```zsh
# Migrate the database on Heroku
heroku run rake db:migrate
```

#### Launching the App

To open your app in a web browser:

```zsh
# Open your Heroku app in a browser
heroku open
```

#### Viewing App Logs

Check the logs for debugging:

```zsh
# View recent logs
heroku logs

# Stream live logs
heroku logs --tail
```

#### Using the Rails Console

Access the Rails console on Heroku:

```zsh
# Open Rails console for your Heroku app
heroku run rails console
```

#### Deleting Your App

To permanently delete your app:

```zsh
# Destroy your Heroku app
heroku apps:destroy
```

#### Verifying Removal

Confirm that your app and add-ons are deleted:

```zsh
# Check your Heroku add-ons and apps
heroku addons --all
heroku apps --all
```

#### Resetting PostgreSQL Database on Heroku

To reset your PostgreSQL database:

```zsh
# Reset and migrate the database
heroku restart
heroku pg:reset DATABASE
heroku run rake db:migrate
heroku run rake db:seed

# One-liner version
heroku restart && heroku pg:reset DATABASE --confirm APP-NAME && heroku run rake db:migrate
```

#### Setting Configuration Variables

Set environment variables (config vars) for your app:

```zsh
# Set a config variable on Heroku
heroku config:set AWS_SES_SMTP_PASSWORD=sadhjk2345khj23k45g
```
