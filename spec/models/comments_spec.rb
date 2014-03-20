require 'spec_helper'

describe Comment do
  describe "#new" do
    it 'creates a new comment' do
      comment = Comment.new(email: 'test@test.com', comment: 'test comment is here')

      expect(comment).to be_valid
    end

    it 'does not create new user because of missing information' do
      comment = Comment.new(email: 'test@test.com', comment: '')
      
      expect(comment).to_not be_valid
      expect(comment).to have(1).error_on(:comment)
    end
  end
end
