class AdminController < ApplicationController
  before_filter :authenticate

  def index
    respond_to do |format|
      format.html { render :text => "You're authenticated!" }
    end
  end

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == 'admin' && password == 'password'
    end
  end
end
