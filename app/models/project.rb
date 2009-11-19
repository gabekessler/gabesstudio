class Project < ActiveRecord::Base
  
  acts_as_taggable
  
  has_many :gallery_images
end
