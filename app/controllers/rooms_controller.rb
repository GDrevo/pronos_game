class RoomsController < ApplicationController
  def index
    @current_user = current_user
    redirect_to "home" unless @current_user
    @rooms = Room.public_rooms
    @users = @current_user.friends.all_except(@current_user)
    @room = Room.new
  end

  # def create
  #   @room = Room.create(name: params["room"]["name"])
  # end

  def show
    @current_user = current_user
    @single_room = Room.find(params[:id])
    @rooms = Room.public_rooms
    @users = @current_user.friends.all_except(@current_user)
    @room = Room.new
    @messages = @single_room.messages
    @message = Message.new
    render "index"
  end
end
