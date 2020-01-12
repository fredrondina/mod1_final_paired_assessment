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
    assert_equal @student.name, "Morgan"
    assert_equal @student.age, 21
    assert_equal @student.scores, []
  end

  def test_scores_can_be_added_to_student
    assert_equal @student.scores, []
    @student.log_score(89)
    @student.log_score(78)
    assert_equal @student.scores, [89, 78]
  end

  def test_grade_can_return_average_score
    @student.log_score(89)
    @student.log_score(78)
    assert_equal @student.grade, 83.5
  end
end
