class Attendance < ApplicationRecord
  validates :name, length: { in: 4..30 }, uniqueness: { case_sensitive: false }
  validates :amount, numericality: { only_integer: true }

  belongs_to :author_id, class_name: 'User'
  belongs_to :group
end
