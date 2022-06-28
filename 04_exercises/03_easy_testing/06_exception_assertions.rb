# Write a minitest assertion that will fail unless employee.hire raises a NoExperienceError exception.
require 'minitest/autorun'

class NoExperienceError < StandardError; end

class Employee
  def hire
    raise NoExperienceError
  end
end

class ExceptionTest < MiniTest::Test
  def test_exception
    employee = Employee.new

    assert_raises(NoExperienceError) do
      employee.hire
    end
  end
end


# NoExperienceError = Class.new(StandardError)

# def test_no_experience_error
#   employee = 'employee'
#   employee.define_singleton_method(:hire) { raise NoExperienceError }
#   assert_raises(NoExperienceError) { employee.hire }
# end