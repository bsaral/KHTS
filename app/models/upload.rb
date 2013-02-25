class Upload < ActiveRecord::Base
  attr_accessible :attach,:username,:user_id
  has_attached_file :attach
  validates_attachment_size :attach, :less_than => 8.megabytes
  validates_attachment_content_type :attach, :content_type => ["application/x-gzip","application/pdf","application/vnd.oasis.opendocument.text","text/plain","image/jpeg","image/jpg","image/png","image/gif",\
			"application/zip","application/vnd.ms-excel","application/vnd.openxmlformatsofficedocument.spreadsheetml.sheet","application/msword",\
			" application/vnd.openxmlformats-officedocument.wordprocessingml.document","application/vnd.ms-powerpoint",\
			"application/vnd.openxmlformats-officedocument.presentationml.presentation"]
			
  belongs_to :user
  
  
end