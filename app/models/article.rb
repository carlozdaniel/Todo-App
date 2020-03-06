class Article < ApplicationRecord
  has_rich_text :content
  belongs_to :user
  after_create :send_mail
  
  has_many :has_lists 
  has_many :lists, through: :has_lists
  attr_accessor :list_elements

  def save_lists
    # lists_array = list_elements.split(",")
    return has_lists.destroy_all if list_elements.nil? || list_elements.empty?
  
    has_lists.where.not(list_id: list_elements).destroy_all

    list_elements.each do |list_id|
      HasList.find_or_create_by(article: self,list_id: list_id )

      #   unless HasList.where(article:self,ist_id: list_id).any?
    #   HasList.create(article: self,list_id: list_id )
    #  end

    end
  end


  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |article|
        csv << article.attributes.values_at(*column_names)
      end
    end
  end


  def send_mail
    EmailWorker.perform_at(1.week) 
  end

end
 