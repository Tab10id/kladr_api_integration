require 'httparty'

class KladrApi
  extend ActiveSupport::Autoload
  include HTTParty

  cattr_accessor :token
  @@token = nil
  cattr_accessor :default_limit
  @@default_limit = nil

  cattr_accessor :configured
  @@configured = false

  def self.configured? #:nodoc:
    @@configured
  end

  def self.setup
    @@configured = true
    yield self
  end

  def initialize(limit=@@default_limit, token=@@token)
    @base_options = { query: {token: token, limit: limit} }
  end

  def address_objects(query, additional_options)
    options = @base_options.deep_dup
    options[:query][:query] = query
    options[:query].merge!(additional_options)
    self.class.get('', options).parsed_response['result']
  end

  def regions(query, additional_options={})
    address_objects(query, additional_options.merge(contentType: 'region'))
  end

  def districts(query, additional_options={})
    address_objects(query, additional_options.merge(contentType: 'district'))
  end

  def cities(query, additional_options={})
    address_objects(query, additional_options.merge(contentType: 'city'))
  end

  def streets(query, additional_options={})
    address_objects(query, additional_options.merge(contentType: 'street'))
  end

  def buildings(query, additional_options={})
    address_objects(query, additional_options.merge(contentType: 'building'))
  end
end

require 'kladr_api/railtie' if defined?(Rails)