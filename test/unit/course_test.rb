require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Course.new.valid?
  end
end
