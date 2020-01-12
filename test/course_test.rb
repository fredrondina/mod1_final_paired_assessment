require_relative '../lib/course'
require_relative '../lib/student'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'


class CourseTest < Minitest::Test

  def setup
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  def test_course_exists_and_has_attributes
    assert_instance_of Course, @course
    assert_equal @course.name, "Calculus"
    assert_equal @course.capacity, 2
    assert_equal @course.students, []
  end

  def test_students_can_be_enrolled
    refute @course.full?
    @course.enroll(@student1)
    @course.enroll(@student2)
    assert @course.full?
    assert_equal @course.students.length, 2
  end
end
