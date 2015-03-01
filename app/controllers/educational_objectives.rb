class EducationalObjectivesController < ApplicationController
  
  respond_to :json


#### CRUD Ops ####

  # def create
  #   @record = Course.new user_params
  #   ( @record.valid? && record.save ? two_hundred_response : four_hundred_response )
  # end

  # def new
  #   @record = Course.new()
  #   two_hundred_response
  # end

  def show
    set_up_generic_record( true, params[:id], Course, ( @foreign ? :courses : nil ), ( @foreign ? :courses : nil ) )
    two_hundred_response
  end

  def index
    generic_index_action( Educationalobjective, ( @foreign ? @parent : Course ) )
    respond_with @records
  end



  # def edit
  #   set_up_generic_record( :update, params[:id], Course )
  #   two_hundred_response
  # end

  # def update
  #   set_up_generic_record( :update, params[:id], Course )    
  #   ( @record.update( course_params ) ? two_hundred_response : four_hundred_response )
  # end

  # def destroy
  #   set_up_generic_record( :destroy, params[:id], Course )
  #   ( @record.destroy ? two_hundred_response : four_hundred_response )
  # end  

#### END CRUD Ops ####

#### START Association Ops ####

  def outcomes
    eo = EducationalObjective.find params[:id]
    if !eo.nil?
      @records = eo.outcomes
      respond_with @records
    else
      four_hundred_response
  end

#### END Association Ops ####

end