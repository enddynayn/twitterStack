module V1
  class AuthenticationController < ApplicationController
    def create
      if AuthenticationService.call(data: authentication_params, user: user)
        render json: JwtTokenGeneratorService.call(user), status: :created
      else
        head :unauthorized
      end
    end


    private

    def authentication_params
      params.permit(:email, :password)
    end

    def user
      @user ||= User.find_by(email: authentication_params[:email])
    end
  end
end
