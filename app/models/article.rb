class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :user
 
  # def self.to_csv
  #   CSV.genetate do |csv|
  #     csv << column_names
  #       all.each do |article|
  #       csv << article.attributes.values_at(*column_name)
  #     end 
  #   end
  # end 
end
 