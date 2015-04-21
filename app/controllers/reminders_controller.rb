class RemindersController < ApplicationController
  def index
    # Obtain all reminders in database
    @reminders = Reminder.all
  end
  
  def show
    # Change URL to show specific post
    @reminder = Reminder.find(params[:id])
  end
  
  def new
    @reminder = Reminder.new
  end
  
  def create
    @reminder = Reminder.new(params[:reminder])
    
    # Boolean || ModelMailer.new_notification
    if @reminder.save
      redirect_to reminders_path,:notice => "Reminder added!"
    else
      render "new"
    end
  end
  
  def edit
    @reminder = Reminder.find(params[:id])
  end
  
  def update
    # used by edit
    @reminder = Reminder.find(params[:id])
    
    if @reminder.update_attributes(params[:reminder])
      redirect_to reminders_path, :notice => "Reminder updated!"
    else
      render "edit"
    end
  end
  
  def destroy
    @reminder = Reminder.find(params[:id])
    @reminder.destroy
    redirect_to reminders_path, :notice => "Reminder Completed!"
  end
end