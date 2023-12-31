# app/controllers/users/sessions_controller.rb
class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_to_on_destroy
    log_out_success && return if current_user
    log_out_failure
  end

  def log_out_success
    render json: { message: 'log_out_success' }, status: :ok
  end

  def log_out_failure
    render json: { message: 'log_out_failure' }, status: :unauthorized
  end
end
