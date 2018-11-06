class Enterprise < ApplicationRecord
  belongs_to :enterprise_sector
  has_many :awards
end
