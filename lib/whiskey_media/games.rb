module WhiskeyMedia
  
  class Games < Connector
    
    HOST = "api.giantbomb.com"
    RESOURCE = "games"
    
    def self.list(options={})
      super HOST, RESOURCE, options
    end
    
  end
  
end