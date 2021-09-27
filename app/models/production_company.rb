class ProductionCompany < ApplicationRecord
  class ProductionCompany < ApplicationRecord
    validates :name, presence: true, uniqueness: true
  end
end
