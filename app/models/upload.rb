# encoding: UTF-8

class Upload < ActiveRecord::Base
  attr_accessible :attach,:username,:user_id,:content
  has_attached_file :attach
  validates_attachment_presence :attach, :message => ' Bir Dosya Seçiniz'
  validates :content, :presence => {:message => ' Açıklama alanı boş bırakılmaz' }
  validates_attachment_size :attach, :in => 1...8.megabytes , :message => ' Dosya Boyutunda Problem Var'
  validates_attachment_content_type :attach, :content_type => ["application/x-gzip","application/pdf","application/vnd.oasis.opendocument.text","text/plain","image/jpeg","image/jpg","image/png","image/gif",
			"application/zip","application/vnd.ms-excel","application/vnd.openxmlformatsofficedocument.spreadsheetml.sheet","application/msword",
			"application/vnd.openxmlformats-officedocument.wordprocessingml.document","application/vnd.ms-powerpoint",
			"application/vnd.openxmlformats-officedocument.presentationml.presentation",
			"application/vnd.openxmlformats-officedocument.wordprocessingml.document",
			"application/vnd.openxmlformats-officedocument.presentationml.slideshow",
			"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"], :message => ' Dosya türü desteklenmemektedir.'
			
  belongs_to :user
  
  
  
  
end
