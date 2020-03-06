class List < ApplicationRecord
  has_many :has_lists 
  has_many :articles, through: :has_lists

end
