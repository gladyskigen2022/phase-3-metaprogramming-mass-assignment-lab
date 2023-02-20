class Person
  # your code here
  # dynamically setting getters and setters/we can now get and set every attribute on an object instantiated from Person
  
  def initialize(attributes)
    attributes.each do |key, value|
      # create a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

