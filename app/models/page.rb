class Page < ActiveRecord::Base
  has_attached_file :image, :styles => { :long => "200x75#", :small => "50x50#" } 
end
