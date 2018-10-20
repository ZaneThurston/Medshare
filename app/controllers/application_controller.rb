class ApplicationController < ActionController::Base
  puts "ApplicationController"
  protect_from_forgery with: :exception
  #before_action :authenticate_user!
  puts "ApplicationController end"
end
