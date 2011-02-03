module WhiskeyMedia

  class Connector

    class << self
      
      def connect_and_parse url
        file = connect url
        parse file
      end
    
      def parse file
        Nokogiri::XML(file)
      end
    
      def connect url
        open(url,"User-Agent" => "Ruby/#{RUBY_VERSION}")
      end
    
    end

    attr_accessor :host, :api_key, :resource
    
    def initialize host, api_key, resource
      @host = host
      @api_key = api_key
      @resource = resource
    end
    
    def url options={}
      "http://#{@host}/#{@resource}/?api_key=#{@api_key}&format=xml&" + options.to_query
    end
    
    def find_by_id options={}
      url = url options
      xml = self.class.connect_and_parse url
      xml.to_item
    end
    
    def list options={}
      url = url options
      xml = self.class.connect_and_parse url
      xml.to_collection
    end

  end
  
end