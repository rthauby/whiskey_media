class Nokogiri::XML::Node
  
  def to_collection
    results = []
    self.css('results')[0].element_children.each do |node|
      results << node.get_values
    end
    results
  end
  
  def to_item
    self.css('results')[0].get_values
  end
  
  def open
    if self.element_children.length == 0
      { self.name.to_sym => self.text }
    else
      { self.name.to_sym => self.get_values }
    end
  end
  
  def get_values
    results = {}
    self.element_children.each do |node|
      results = results.merge(node.open)
    end
    results
  end

end