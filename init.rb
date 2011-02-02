require File.join(File.dirname(__FILE__), "lib", "whiskey_media")

whiskey_media_config = "#{RAILS_ROOT}/config/whiskey_media.yml"
WhiskeyMedia.load_configuration(whiskey_media_config)