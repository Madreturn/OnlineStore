class Product < ApplicationRecord
  validates :title, :description, :image_url, :presence => true
  validates :image_url, :format => {
                :with => %r{\.(gif|jpg|png)&}i,
                :message => "must bu URL for GIF, JPG or PNG image."
                      }
  validates :title, :uniqueness => true
end
