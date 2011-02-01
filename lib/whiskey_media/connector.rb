module WhiskeyMedia

  class Connector
      
    def self.url_for host, resource, id
      "http://#{host}/#{resource}/#{id}/?api_key=#{@api_key}&format=xml"
    end
    
    def self.url_for_list host, resources
      "http://#{host}/#{resources}/?api_key=#{@api_key}&format=xml"
    end
    
    def self.get host, resource, id
      url = url_for host, resource, id
      file = connect url
      xml = parse file
      xml.to_item
    end
    
    def self.list host, resources
      url = url_for_list host, resources
      puts url
      file = connect url
      xml = parse file
      xml.to_collection
    end
    
    def self.parse file
      Nokogiri::XML(file)
    end
    
    def self.connect url
      open(url,"User-Agent" => "Ruby/#{RUBY_VERSION}")
    end
    
  end
  
end