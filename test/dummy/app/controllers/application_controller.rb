class ApplicationController < ActionController::Base

  def home
    render :text => "hello"
  end

  protect_from_forgery

end
