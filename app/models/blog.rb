class Blog < ApplicationRecord
	has_many :comments, dependent: :destroy, inverse_of: :blog
end
