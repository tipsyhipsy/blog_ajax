class Comment < ApplicationRecord
  belongs_to :blog, inverse_of: :comments
end
