module WhiskeyMedia
  
  class Issues < Connector
    
    HOST = "api.comicvine.com"
    RESOURCE = "issues"
    
    def self.api_key
      WhiskeyMedia.configuration[:api_keys]['comicvine']
    end
    
    def self.list(options={})
      super HOST, RESOURCE, options
    end
    
  end
  
end