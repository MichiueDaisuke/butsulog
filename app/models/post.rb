class Post < ApplicationRecord
  validates :reputation , {presence: true, length: {maximum: 140}}
end
