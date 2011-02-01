module WhiskeyMedia
  
  @configuration = {}
  @api_key = nil
  
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
      @api_key = config['api_key']
      puts @api_key
    end
    
  end
  
end