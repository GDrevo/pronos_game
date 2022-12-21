class UsersController < ApplicationController
  # def show
  #   @user = User.find(params[:id])
  #   @bets = Bet.where(user: @user)
  #   @won_bets = @bets.where.not(score: 0)
  #   @perfect_bets = @won_bets.where(score: 10)
  #   @ranking = @user.ranking + 1
  # end

  def index
    # @user = User.find(params[:id])
    @current_user = current_user
    @rooms = Room.public_rooms
    @users = @current_user.friends.all_except(@current_user)
    # @room = Room.new
    # @message = Message.new
    # @room_name = get_name(@user, @current_user)
    # @single_room = Room.where(name: @room_name).first || Room.create_private_room([@user, @current_user], @room_name)
    # @messages = @single_room.messages

    render "rooms/index"
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @rooms = Room.public_rooms
    @users = @current_user.friends.all_except(@current_user)
    @room = Room.new
    @message = Message.new
    @room_name = get_name(@user, @current_user)
    @single_room = Room.where(name: @room_name).first || Room.create_private_room([@user, @current_user], @room_name)
    @messages = @single_room.messages

    render "rooms/index"
  end

  private

  def get_name(user1, user2)
    users = [user1, user2].sort
    "private_#{users[0].id}_#{users[1].id}"
  end
end
