# Heroku Cli
To login run:
```zsh
heroku login
```

Create a Procfile and write:
```zsh
web: bundle exec puma -C config/puma.rb
```

To create new app:
```zsh
heroku apps:create
```

Then push to heroku:
```zsh
git push heroku master
```

Migrate The Database
```zsh
heroku run rake db:migrate
```

To launch the app in the browser, run:
```zsh
heroku open
```

The app logs are a valuable tool if the app is not performing correctly or generating errors.
```zsh
heroku logs
```

Append -t/--tail to the command to see a full, live stream of the app’s logs:
```zsh
heroku logs --tail
```

Use The Rails Console
```zsh
heroku run rails console
```

This action permanently deletes your application
```zsh
heroku apps:destroy
```

You can confirm that your add-on and app are gone with these commands:
```zsh
heroku addons --all
heroku apps --all
```

How to reset PG Database on Heroku?
```zsh
heroku restart
heroku pg:reset DATABASE
heroku run rake db:migrate
heroku run rake db:seed
```
One Liner:
```zsh
heroku restart && heroku pg:reset DATABASE --confirm APP-NAME && heroku run rake db:migrate
```
