module WhiskeyMedia
  
  class Games < Connector
    
    def self.list
      super "api.giantbomb.com","games"
    end
    
  end
  
end