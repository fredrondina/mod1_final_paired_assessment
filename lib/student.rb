require 'pry'

class Student

  attr_reader :name, :age, :scores

  def initialize(attribute_hash = Hash.new)
    @name = attribute_hash[:name]
    @age = attribute_hash[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    (@scores.sum.to_f / @scores.length).round(1)
  end
end
