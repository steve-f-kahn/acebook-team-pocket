class FriendsController < ApplicationController
  def new
  end

  def index
    @friends = [] #Friends of profile owner
    friend_ids = Friend.where("receiver_id = #{params[:id]}", "sender_id = #{params[:id]}")
    friend_ids.each do |friend|
      if friend.receiver_id == params[:id].to_i
        @friends << user = Signup.find_by(id: friend.sender_id)
      elsif friend.sender_id == params[:id]
        @friends << user = Signup.find_by(id: friend.receiver_id)
      end
    end
  end

end
