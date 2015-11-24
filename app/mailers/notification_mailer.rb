class NotificationMailer < ActionMailer::Base
  default from: "no-replay@kneescrapers.com"

  def comment_added
    mail(to: "b.obrien@me.com", subject: "A comment has been added to the tour you created.")
  end
end
