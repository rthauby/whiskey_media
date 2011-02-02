module WhiskeyMedia

  class Connector
    
    def self.api_key
      WhiskeyMedia.configuration[:api_key]
    end
      
    def self.url_for host, resource, id, options={}
      "http://#{host}/#{resource}/#{id}/?api_key=#{api_key}&format=xml&" + options.to_query
    end
    
    def self.url_for_list host, resources, options={}
      "http://#{host}/#{resources}/?api_key=#{api_key}&format=xml&" + options.to_query
    end
    
    def self.get host, resource, id
      url = url_for host, resource, id
      xml = connect_and_parse url
      xml.to_item
    end
    
    def self.list host, resources, options={}
      url = url_for_list host, resources, options
      xml = connect_and_parse url
      xml.to_collection
    end
    
    def self.connect_and_parse url
      file = connect url
      parse file
    end
    
    def self.parse file
      Nokogiri::XML(file)
    end
    
    def self.connect url
      open(url,"User-Agent" => "Ruby/#{RUBY_VERSION}")
    end
    
  end
  
end