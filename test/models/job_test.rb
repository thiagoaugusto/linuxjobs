require 'test_helper'

class JobTest < ActiveSupport::TestCase
  setup do
    @job = jobs(:job)
  end

  test "should be valid" do    
    assert @job.valid?
  end

  test "should not be valid" do
    job = Job.new    
    assert_not job.valid?
  end

  test "validates email format" do
    assert_match(/\A[a-z]([\.\-\+]?\w+)+@[a-z]([\.\-]?\w+){2,}\Z/, @job.email)
  end
end
