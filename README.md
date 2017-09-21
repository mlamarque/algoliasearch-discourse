# algoliasearch-discourse
Connect Algolia to Discourse: http://algolia.com


## Installation


Run bundle exec rake plugin:install repo=https://github.com/mlamarque/algoliasearch-discourse.git in your discourse directory.
In your Discourse adminpanel, look for the `algoliasearch_discourse` settings and enter your application_id, api_key and index.

In your `config/settings.yml`, you have to write which models and attributes you want index.

Example :
```ruby
  indexes:
    topic: "title,fancy_title,excerpt"
    post: "raw"
```

Restart Discourse


## Contributors

| [<img src="https://avatars.githubusercontent.com/u/461479?v=3" width="100px;"/><br /><sub>Mlamarque</sub>](https://github.com/mlamarque) | [<img src="https://avatars.githubusercontent.com/u/7848606?v=3" width="100px;"/><br /><sub>Arjen Brandenburgh</sub>](https://github.com/cybey) |
| :---: | :---: |


## Use case

Plugin realized in a project to thesocialclient.com

```sh
cd dillinger
docker build -t <youruser>/dillinger:latest .
```
