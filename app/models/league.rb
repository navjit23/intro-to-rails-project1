class League < ApplicationRecord
  validates :league_name, presence: true
  has_many :tables
  has_many :fixtures
end
