class NotificationMailer < ActionMailer::Base
  default from: "no-reply@kneescrapers.com"

  def comment_added(comment)
    @tour = comment.tour
    @tour_owner = @tour.user
    mail(to: @tour_owner.email, subject: "A comment has been added to your tour: #{@tour.name}")
  end
end
