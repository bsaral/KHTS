class Upload < ActiveRecord::Base
  attr_accessible :attach,:username,:user_id
  has_attached_file :attach
  belongs_to :user
  
end
