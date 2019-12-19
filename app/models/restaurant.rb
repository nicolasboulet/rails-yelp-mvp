class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ['chinese', 'italian', 'japanese',
                                         'french', 'belgian'] }
  has_many :reviews, dependent: :destroy
end
