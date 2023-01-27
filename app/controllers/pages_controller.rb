class PagesController < ApplicationController
  skip_defore_action :valify_authenticity_token, raise: false
  before_action :authenticate_devise_api_token!, only: [:restricted]
  def home
  end

  def restricted
    devise_api_token = current_devise_api_token
    if devise_api_token
      render json: { massage: "You are logged in as #{devise_api_token.resource_owner.email}"}, status: :ok
    else
      render json: { massage: 'You are not logged in'}, status: :unauthorized
    end
  end
end
