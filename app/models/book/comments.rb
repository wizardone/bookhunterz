class Book::Comments < ActiveRecord::Base
  belongs_to :resource, polymorphic: true
end
