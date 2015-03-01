class ScheduledCoursesController < ApplicationController
  
  respond_to :json


#### CRUD Ops ####

  # def create
  #   @record = ScheduledCourse.new user_params
  #   ( @record.valid? && record.save ? two_hundred_response : four_hundred_response )
  # end

  # def new
  #   @record = ScheduledCourse.new()
  #   two_hundred_response
  # end

  def show
    set_up_generic_record( true, params[:id], ScheduledCourse, ( @foreign ? :scheduled_courses : nil ), ( @foreign ? :scheduled_courses : nil ) )
    two_hundred_response
  end

  def index
    generic_index_action( ScheduledCourse, ( @foreign ? @parent : ScheduledCourse ) )
    respond_with @records
  end

  # def edit
  #   set_up_generic_record( :update, params[:id], ScheduledCourse )
  #   two_hundred_response
  # end

  # def update
  #   set_up_generic_record( :update, params[:id], ScheduledCourse )    
  #   ( @record.update( scheduled_course_params ) ? two_hundred_response : four_hundred_response )
  # end

  # def destroy
  #   set_up_generic_record( :destroy, params[:id], ScheduledCourse )
  #   ( @record.destroy ? two_hundred_response : four_hundred_response )
  # end  

end