class OutcomesController < ApplicationController
  
  respond_to :json


#### CRUD Ops ####

  # def create
  #   @record = Outcomes.new user_params
  #   ( @record.valid? && record.save ? two_hundred_response : four_hundred_response )
  # end

  # def new
  #   @record = Outcomes.new()
  #   two_hundred_response
  # end

  def show
    set_up_generic_record( true, params[:id], Outcomes, ( @foreign ? :outcomes : nil ), ( @foreign ? :outcomes : nil ) )
    two_hundred_response
  end

  def index
    generic_index_action( Outcomes, ( @foreign ? @parent : Outcomes ) )
    respond_with @records
  end

  # def edit
  #   set_up_generic_record( :update, params[:id], Outcomes )
  #   two_hundred_response
  # end

  # def update
  #   set_up_generic_record( :update, params[:id], Outcomes )    
  #   ( @record.update( outcomes_params ) ? two_hundred_response : four_hundred_response )
  # end

  # def destroy
  #   set_up_generic_record( :destroy, params[:id], Outcomes )
  #   ( @record.destroy ? two_hundred_response : four_hundred_response )
  # end  

end