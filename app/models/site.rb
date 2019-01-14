class Site < ApplicationRecord
  has_many :parts
  validates :reference_site, uniqueness: true
end
