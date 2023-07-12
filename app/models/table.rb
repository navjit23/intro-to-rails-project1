class Table < ApplicationRecord

  belongs_to :league
  has_many :fixtures
  has_many :players
end
