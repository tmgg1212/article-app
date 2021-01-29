class Article < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :text
    validates :category_id
    validates :image
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  
  belongs_to :user
  has_one_attached :image
end
