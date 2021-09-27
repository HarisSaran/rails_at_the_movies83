# class ProductionCompany < ApplicationRecord
#   class ProductionCompany < ApplicationRecord
#     validates :name, presence: true, uniqueness: true
#   end
# end
class ProductionCompany < ApplicationRecord
  has_many :movies
  validates :name, presence: true, uniqueness: true
end
