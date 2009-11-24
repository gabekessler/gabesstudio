class Page < ActiveRecord::Base
  acts_as_taggable
  has_attached_file :image, :styles => { :original => "600x600>", :long => "565x190#", :small => "50x50#" } 
end
