class Note < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc)}

  validates :title, presence: true, length: {maximum: 16}
  validates :content, presence: true
  validates :user_id, presence: true
end
