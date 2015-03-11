require 'rails/railtie'

class KladrApi
  class Railtie < Rails::Railtie
    config.eager_load_namespaces << KladrApi

    config.after_initialize do
      unless KladrApi.configured?
        warn '[KladrApi] KladrApi is not configured in the application.' +
             ' Use `rails generate kladr_api:install` to generate the KladrApi configuration.'
      end
    end
  end
end
