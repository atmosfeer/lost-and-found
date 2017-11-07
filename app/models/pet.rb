class Pet < ApplicationRecord
  CATEGORIES = %w(giraffe cat dog fish rock cheetah)

  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES,
    message: "%{value} is not a valid category" }

  def self.categories
    CATEGORIES
  end
end
