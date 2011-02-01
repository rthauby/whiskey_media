module WhiskeyMedia
  
  @wm_configuration = {}
  @wm_url = nil
  
  class << self
    
    def load_configuration(file)
      return false unless File.exist?(file)
      @configuration = YAML.load(ERB.new(File.read(file)).result)
      if defined? RAILS_ENV
        @configuration = @configuration[RAILS_ENV]
      end
      apply_configuration(@configuration)
    end
    
    def apply_configuration(config)
      @wm_configuration = config
      @wm_url = url_for config['host'], config['api_key']
      puts @wm_url
    end
    
    def url_for host_name, api_key
      "http://#{host_name}/game/?api_key=#{api_key}&format=xml"
    end
    
  end
  
end