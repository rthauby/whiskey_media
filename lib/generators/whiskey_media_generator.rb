class WhiskeyMediaGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def create_config_yaml
      copy_file 'config/whiskey_media.yml','config/whiskey_media.yml'
  end
  
end