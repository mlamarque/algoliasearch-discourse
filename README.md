# algoliasearch-discourse
Connect Algolia to Discourse : http://algolia.com


# Installation


Run bundle exec rake plugin:install repo=https://github.com/mlamarque/algoliasearch-discourse.git in your discourse directory
Write you client_id, api_key and index in settings.yml

You have to write which models and attributes you want index.

example : 
```ruby
  algolia:
    client_id: ''
    api_key: ''
    index: ""
    indexes:
      topic: "title,fancy_title,excerpt"
      post: "raw"
```

Restart Discourse

Plugin realized in a project to thesocialclient.com

```sh
cd dillinger
docker build -t <youruser>/dillinger:latest .
```
