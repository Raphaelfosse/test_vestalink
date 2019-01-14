class Part < ApplicationRecord
  belongs_to :site, optional: true
  validates :reference_part, uniqueness: true
end
