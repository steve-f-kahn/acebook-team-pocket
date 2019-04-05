class FriendsController < ApplicationController

  protect_from_forgery except: :index


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

  def create
    newFriend = Friend.where(["receiver_id= ? and sender_id = ?", params[:id].to_i, session[:user]["id"]])
    if newFriend.empty?
      Friend.create(receiver_id: params[:id].to_i, sender_id: session[:user]["id"])
      newFriend = Signup.find_by(id: session[:user]["id"])
      render json: newFriend
    else
      render json: "empty"
    end

  end

end
