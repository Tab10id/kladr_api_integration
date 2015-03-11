KladrApi.setup do |config|
  config.base_uri 'kladr-api.ru/api.php'
  # config.http_proxy('127.0.0.1', '8080', 'login', 'password')

  # config.token = '123456789012345678901234'
  config.default_limit = 25
end