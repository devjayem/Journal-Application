class Task < ApplicationRecord
  default_scope { order(created_at: :desc)}

  belongs_to :user

  validates :title, :description, :deadline, presence: true
  validates :title, uniqueness: true
end
