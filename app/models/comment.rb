class Comment < ActiveRecord::Base
  belongs_to :commenter
  belongs_to :post
end
