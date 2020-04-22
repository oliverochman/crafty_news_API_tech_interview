class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_active_record_error

  protected

  def render_active_record_error(error)
    render json: { error_message: error.message }, status: 500
  end
end
