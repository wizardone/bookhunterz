class Book::Authors < ActiveRecord::Base

 has_one :review
end
