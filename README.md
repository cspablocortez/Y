# Y

A microblogging platform similar to X.

## Notes

[] Rails installation

Create a new Rails app:

```bash
rails new myapp --database=postgresql
```

```bash
cd myapp
```

Create a Heroku app:

```bash
heroku create
```

Add the `x86_64-linux` and `ruby` platforms to `Gemfile.lock`.

```bash
bundle lock --add-platform x86_64-linux --add-platform ruby
```

Create a local database:

```bash
bin/rails db:create
```

After removing default welcome page, create a `Procfile`. While deploying a
Rails 7 app without a Procfile executes the following command, but Heroku
[recommends](https://devcenter.heroku.com/articles/getting-started-with-rails7#create-a-procfile) explicitly declaring how to boot the server process.

```bash
echo "web: bundle exec puma -C config/puma.rb" > Procfile
```