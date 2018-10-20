class ApplicationController < ActionController::Base
  puts "Hello, logs!"
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end
