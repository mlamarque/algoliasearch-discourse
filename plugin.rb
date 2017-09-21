# name: algoliasearch-discourse
# about: 
# version: 1.1
# author: Matthieu Lamarque

gem "algoliasearch-rails", "1.20.1"

after_initialize do
  AlgoliaSearch.configuration = { application_id: SiteSetting.algoliasearch_discourse_application_id,
                                  api_key: SiteSetting.algoliasearch_discourse_api_key }
  
  class_to_index = YAML::load_file('plugins/algoliasearch-discourse/config/settings.yml')["indexes"]
  class_to_index.each do |index, values|
    index.camelize.constantize.class_eval do
      include AlgoliaSearch
      algoliasearch index_name: SiteSetting.algoliasearch_discourse_index_name do
        attribute *values.split(",").map(&:to_sym)
      end
    end
  end
end
