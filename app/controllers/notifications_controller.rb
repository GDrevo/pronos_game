class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(user: params[:user_id])
  end
end
