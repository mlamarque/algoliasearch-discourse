# name: algoliasearch-discourse
# about: 
# version: 1.0
# author: Matthieu Lamarque


after_initialize do
  config = YAML::load_file('plugins/algoliasearch-discourse/config/settings.yml')["algolia"]
  AlgoliaSearch.configuration = { application_id: config["client_id"], api_key: config["api_key"] }
  
  class_to_index = config["indexes"]
  class_to_index.each do |index, values|
    index.camelize.constantize.class_eval do
      include AlgoliaSearch
      algoliasearch index_name: config["index"] do
        attribute *values.split(",").map(&:to_sym)
      end
    end
  end
end
