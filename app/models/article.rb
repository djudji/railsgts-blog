class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 5, maximum: 300 }

end
