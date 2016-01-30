class Word < ActiveRecord::Base
  has_attached_file :img, :s3_protocol => :https, styles: { medium: "650x400>", thumb: "100x100>" }, default_url: "/imgs/:style/imgD.jpg"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/

	if Rails.env.development?
  		has_attached_file :fichier,
    	:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
    	:url => "/system/:attachment/:id/:style/:filename"
	end
end
