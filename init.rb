require 'whiskey_media'

whiskey_media_config = "#{RAILS_ROOT}/config/whiskey_media.yml"
WhiskeyMedia.load_configuration(whiskey_media_config)


puts WhiskeyMedia::Games.list