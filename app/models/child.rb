class Child < ActiveRecord::Base
  attr_accessible :date_of_birth, :image, :name, :total_points
  mount_uploader :image, ImageUploader
  
  has_many :tasks
  
end
