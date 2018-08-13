class HomeController < ApplicationController
  def index
    @jobs = Job.last(5)
  end
end
