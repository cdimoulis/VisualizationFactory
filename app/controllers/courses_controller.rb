class CoursesController < ApplicationController
  
  respond_to :json


#### CRUD Ops ####

  def create
    @record = Course.new user_params
    ( @record.valid? && record.save ? two_hundred_response : four_hundred_response )
  end

end