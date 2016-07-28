class ApplicationController < ActionController::API

  private

  def current_user
    if params[:auth_token] && User.exists?(auth_token: params[:auth_token])
      @user ||= User.find_by(auth_token: params[:auth_token])
    end
    @user
  end

  def require_user
    render json: {
      errors:
      [
        {
          error: "You need to be logged in to do that"
        }
      ]
    }, status: :forbidden unless current_user
  end

end
