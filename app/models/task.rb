class Task < ApplicationRecord
  belongs_to :list
  enum priority: [:low, :normal, :high]
end
