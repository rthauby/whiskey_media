module WhiskeyMedia
  
  @configuration = {}
  
  class << self
    
    attr_accessor :configuration
      
    def load_configuration(file)
      return false unless File.exist?(file)
      config = YAML.load(ERB.new(File.read(file)).result)
      apply_configuration config
    end
    
    def apply_configuration(config)
      config.each_pair do |k,v|
        @configuration[k.to_sym] = v
      end
    end
    
  end
  
end