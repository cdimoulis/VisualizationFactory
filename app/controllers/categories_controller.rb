class CategoriesController < ApplicationController
  
  respond_to :json


#### CRUD Ops ####

  def create
    @record = Category.new user_params
    ( @record.valid? && record.save ? two_hundred_response : four_hundred_response )
  end

  def new
    @record = Category.new()
    two_hundred_response
  end

  def show
    set_up_generic_record( true, params[:id], Category, ( @foreign ? :categories : nil ), ( @foreign ? :categories : nil ) )
    two_hundred_response
  end

  def index
    generic_index_action( Category, ( @foreign ? @parent : Category ) )
    respond_with @records
  end

  def edit
    set_up_generic_record( :update, params[:id], Category )
    two_hundred_response
  end

  def update
    set_up_generic_record( :update, params[:id], Category )    
    ( @record.update( category_params ) ? two_hundred_response : four_hundred_response )
  end

  def destroy
    set_up_generic_record( :destroy, params[:id], Category )
    ( @record.destroy ? two_hundred_response : four_hundred_response )
  end  

end