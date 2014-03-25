class CommentMailer < ActionMailer::Base
  include MailsHelper

  default from: "admin@bookhunterz.com", to: ["wizard.oneandonly@gmail.com", "inni4ka@gmail.com"]

  def comment_added(resource)
    @resource_url = book_review_url(resource)
    mail(subject: "Нов коментар беше добавен")
  end
end
