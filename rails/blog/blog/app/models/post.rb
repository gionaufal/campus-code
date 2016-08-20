class Post < ApplicationRecord
  validates :title, :presence=>true
  validates :body, :presence=>true
  validates :author, :presence=>true
  has_many :comments
end
