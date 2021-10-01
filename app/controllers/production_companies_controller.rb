# class ProductionCompaniesController < ApplicationController
#   def index
#     @production_companies = ProductionCompany.select("production_companies.*")
#                                              .select("COUNT(production_companies.id) as movie_count")
#                                              .left_joins(:movies)
#                                              .group("production_companies.id")
#                                              .order("movie_count DESC")
#   end

#   def show
#     @production_company = ProductionCompany.find(params[:id])
#   end
# end

# class ProductionCompany < ApplicationRecord
#   has_many :movies
#   validates :name, presence: true, uniqueness: true

#   def self.ordered_by_movies
#     self.select("production_companies.*")
#         .select("COUNT(production_companies.id) as movie_count")
#         .left_joins(:movies)
#         .group("production_companies.id")
#         .order("movie_count DESC")
#   end
# end

class ProductionCompaniesController < ApplicationController
  def index
    @production_companies = ProductionCompany.ordered_by_movies
  end

  def show
    @production_company = ProductionCompany.find(params[:id])
  end
end

