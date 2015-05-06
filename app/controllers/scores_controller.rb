class ScoresController < ApplicationController
  
  respond_to :json


#### CRUD Ops ####

  # def create
  #   @record = Score.new user_params
  #   ( @record.valid? && record.save ? two_hundred_response : four_hundred_response )
  # end

  # def new
  #   @record = Score.new()
  #   two_hundred_response
  # end

  def show
    set_up_generic_record( true, params[:id], Score, ( @foreign ? :scores : nil ), ( @foreign ? :scores : nil ) )
    two_hundred_response
  end

  def index
    generic_index_action( Score, ( @foreign ? @parent : Score ) )
    respond_with @records
  end

  # def edit
  #   set_up_generic_record( :update, params[:id], Score )
  #   two_hundred_response
  # end

  # def update
  #   set_up_generic_record( :update, params[:id], Score )    
  #   ( @record.update( score_params ) ? two_hundred_response : four_hundred_response )
  # end

  # def destroy
  #   set_up_generic_record( :destroy, params[:id], Score )
  #   ( @record.destroy ? two_hundred_response : four_hundred_response )
  # end  

end