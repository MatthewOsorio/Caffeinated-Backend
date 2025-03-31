class ApiController < ApplicationController
  include RESTFramework::BaseControllerMixin

  self.paginator_class = RESTFramework::PageNumberPaginator

  class_attribute(:page_size, default: 30)

  SECRET = Rails.application.secret_key_base. to_s

  def authorize_request
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end
