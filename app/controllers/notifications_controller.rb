class NotificationsController < ApplicationController
  def index
  end

  def create
    Notifier.deliver.new_notification
    flash[:notice] = "Message sent"
    redirect_to root_path
  end
end