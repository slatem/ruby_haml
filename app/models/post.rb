class Post < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }
  validate :text, presence: true,
                  length: { minimum: 20 }
  has_many :comments
end
