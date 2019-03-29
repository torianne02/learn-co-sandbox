require 'pry'

class Person
  attr_accessor :name, :partner
 
  def initialize(name)
    @name = name
  end
 
  def get_married(person)
    self.partner = person
    person.partner = self
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name
binding.pry 