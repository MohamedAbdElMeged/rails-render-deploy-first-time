module Api
  class ApplicationController < ActionController::API
    protect_from_forgery with: :null_session
  end
end