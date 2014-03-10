require "spec_helper"

describe CommentMailer do
  describe "#comment_added" do
    it 'sends the email that comment has been added' do
      review = Book::Review.create!(review: "aaaa", book_name: "test")
      CommentMailer.comment_added(review).deliver

      ActionMailer::Base.deliveries.last.to.should == ["wizard.oneandonly@gmail.com"]
      ActionMailer::Base.deliveries.last.subject.should == "Нов коментар беше добавен"
    end
  end
end
