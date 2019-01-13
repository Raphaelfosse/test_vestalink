class Part < ApplicationRecord
  belongs_to :site, optional: true
end
