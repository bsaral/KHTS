class Upload < ActiveRecord::Base
  attr_accessible :attach
  has_attached_file :attach
  
end
