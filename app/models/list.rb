class List < ApplicationRecord
  belongs_to :user
  has_many :tasks
  validates :name, presence: true

  enum type: ["magic", "custom"]
  # Add is_shared? as method probably
end
