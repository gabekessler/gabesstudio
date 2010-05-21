class GalleryImage < ActiveRecord::Base
  
  belongs_to :project, :foreign_key => "project_id"
  
  has_attached_file :image, :styles => { :original => "600x600>", :large => "500x500>", :long => "565x100#", :medium => "200x200>",  :small => "50x50#", :iphone => "320x320" } 
  
end
