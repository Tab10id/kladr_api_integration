class KladrApi
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    def copy_initializer_file
      file_name = 'kladr_api'
      copy_file "#{file_name}.rb", "config/initializers/#{file_name}.rb"
    end
  end
end