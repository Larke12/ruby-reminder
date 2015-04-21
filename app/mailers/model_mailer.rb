class ModelMailer < ActionMailer::Base
  default from: "reminder@ryanhammett.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_notification.subject
  #
  def new_notification
    mail(to: "rhammett@ycp.edu", subject: 'New Notification', sent_on: Time.now)
  end
end