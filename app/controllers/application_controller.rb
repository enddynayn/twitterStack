class ApplicationController < ActionController::API
  include Knock::Authenticable

  rescue_from Mongoid::Errors::DocumentNotFound do
    render(status: :not_found)
  end
end
