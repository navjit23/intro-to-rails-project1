class League < ApplicationRecord
  has_many :tables
  has_many :fixtures
end
