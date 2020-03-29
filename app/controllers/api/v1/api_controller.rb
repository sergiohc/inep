module Api::V1
  class ApiController < ApplicationController
    rescue_from(ActiveRecord::RecordNotFound) do ||
      render(json: {message: 'Not Found'}, status: :not_found)
    end
  
    rescue_from(ActionController::ParameterMissing) do |parameter_missing_exception|
       render(json: {message: "Required parameter missing: #{parameter_missing_exception.param}"}, status: :bad_request)
    end

    def render_json(hash, status = 200)
      render json: hash, status: status
    end

  end 
 end 