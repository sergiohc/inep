class Api::V1::SchoolsController < Api::V1::ApiController
  before_action :set_school, only: [:show]

  def index 
    if params[:page].present? || params[:per].present?
      shools = School.page(params[:page]).per(params[:per])
    else 
      shools = School.first(100)
    end      

    render json: shools, adapter: :json, status: 200
  end

  def show 
    render json: @school, fields: [:name], adapter: :json, status: 200
  end

  private
  
  def set_school
    @school = School.find params[:id]
  end

end