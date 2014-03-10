class CommentMailer < ActionMailer::Base
  default from: "admin@bookhunterz.com", to: ["wizard.oneandonly@gmail.com"]

  def comment_added(resource)
    @resource_url = book_review_url(resource, host: 'http://localhost')
    mail(subject: "Нов коментар беше добавен")
  end
end
