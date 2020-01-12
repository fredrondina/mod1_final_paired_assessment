require 'pry'

class Student

  attr_reader :name, :age

  def initialize(attribute_hash = Hash.new)
    @name = attribute_hash[:name]
    @age = attribute_hash[:age]
  end

end
