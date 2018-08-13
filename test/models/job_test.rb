require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "should be valid" do
    job = jobs(:job)    
    assert job.valid?
  end

  test "should not be valid" do
    job = Job.new    
    assert_not job.valid?
  end
end
