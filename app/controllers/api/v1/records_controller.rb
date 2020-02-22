module Api
   module V1

  class RecordsController < ApplicationController

     before_action :authorize_access_request!

  before_action :set_record, only: [:show, :update, :destroy]

  def index
    # @records = Record.all

    @records = current_user.records.all

    render json: @records
  end


  def show
    render json: @record
  end

 
  def create
    # @record = Record.new(record_params)

      @record = current_user.records.build(record_params)

    if @record.save
      render json: @record, status: :created, location: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  
  def update
    if @record.update(record_params)
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @record.destroy
  end

  private
  
    def set_record
      # @record = Record.find(params[:id])

     @record = current_user.records.find(params[:id])
    end

    
    def record_params
      # params.require(:record).permit(:title, :year, :artist_id, :user_id)
      params.require(:record).permit(:title, :year, :artist_id)
    end
end


end
end
