require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:job)
  end

  test "GET index" do
    get jobs_path
    assert_response :success
    assert_not_nil assigns(:jobs)
  end
  
  test "GET new" do
    get new_job_path
    assert_response :success
    assert_not_nil assigns(:job)
  end

  test "should create a new job successfully" do
    assert_difference('Job.count') do
      post jobs_path, params: { job: { company: @job.company, title: @job.title,
                             location: @job.location, description: @job.description, 
                             skills: @job.skills} }
    end

    assert_not_nil assigns(:job)
    assert_redirected_to job_path(Job.last)    
  end

  test "GET show" do
    get job_path(@job)
    assert_response :success
  end

  test "GET edit" do
    get edit_job_path(@job)
    assert_response :success
  end

  test "should update a job successfully" do
    new_job_title = "Jr. Linux Sysadmin"
    patch job_path(@job), params: {job: {title: new_job_title } }
    assert_redirected_to job_path(@job)

    @job.reload
    assert_equal new_job_title, @job.title
  end

  test "should destroy a job successfully" do
    assert_difference('Job.count', -1) do
      delete job_path(@job)
    end

    assert_redirected_to jobs_path
  end
end
