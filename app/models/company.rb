class Company < ActiveRecord::Base
  has_many :claims

  def self.claims_by_company
   Company.joins(:claims).group("companies.name").order("count(companies.name) DESC").pluck("companies.name, count(companies.name)")
 end

 
end
