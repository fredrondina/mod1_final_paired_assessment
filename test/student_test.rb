require_relative '../lib/student'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'


class StudentTest < Minitest::Test

  def setup
    @student = Student.new({name: "Morgan", age: 21})
  end

  def test_student_exists_and_has_attributes
    assert_instance_of Student, @student
    
  end
end
