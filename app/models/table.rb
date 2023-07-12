class Table < ApplicationRecord
  validates :name, presence: true
  belongs_to :league
  has_many :fixtures
  has_many :players
end
