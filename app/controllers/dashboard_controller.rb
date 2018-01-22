class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    puts User.find(current_user.id).email
  end
end
