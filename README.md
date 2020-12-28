# rails-playsgound

## Setup

```
$ bundle instlal --vendor/bundle
$ docker-compose up -d
```

## Start

```
$ bundle exec rails s
$ bundle exec sidekiq -C config/sidekiq.yml
```

## Deploy to GCP

```
$ gcloud app deploy app.yaml worker.yaml
```

