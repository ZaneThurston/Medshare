class ApplicationController < ActionController::Base
  puts "ApplicationController"
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  puts "ApplicationController end"
end
