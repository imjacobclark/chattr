class ProfileController < ApplicationController
  def index
  end

  def user
    profile_id = User.find(params[:id])
    @messages = Message.where(:sender => current_user.id, :recipient => profile_id).or(Message.where(:sender => profile_id, :recipient =>  current_user.id)).order("created_at ASC")
  end
end
