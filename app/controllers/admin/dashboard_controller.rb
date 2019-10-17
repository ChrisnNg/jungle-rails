class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV["Basic_Auth_credentials_username"], password: ENV["Basic_Auth_credentials_password"]
  def show
  end
end
