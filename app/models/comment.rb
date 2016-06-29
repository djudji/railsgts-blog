class Comment < ActiveRecord::Base
  belongs_to :article

  validates :author, presence: true, length: { minimum: 5 }
  validates :comment_body, presence: true, length: { minimum: 5, maximum: 300 }

end
