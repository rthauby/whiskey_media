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
  
  def has_children?
    true unless self.element_children.length == 0
  end
  
  def is_empty?
    false unless self.text == ""
  end
    
  def is_not_empty?
    true unless self.text == ""
  end
  
  def open
    if self.has_children?
      { self.name.to_sym => self.get_values } 
    elsif self.is_not_empty?
      { self.name.to_sym => self.text }
    else
      {}
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