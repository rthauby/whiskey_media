module WhiskeyMedia
  
  class GiantBomb < Connector
    
    def initialize resource
      super("api.giantbomb.com", WhiskeyMedia.configuration[:api_keys]['giantbomb'], resource)
    end
    
  end
  
  class Games

    class << self
      
      def find_by_id(id, options={})
        connector = GiantBomb.new "game/#{id}"
        connector.find_by_id options
      end
      
      def list(options={})
        connector = GiantBomb.new "games"
        connector.list options
      end
      
    end
    
  end
  
end