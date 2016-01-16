class Word < ActiveRecord::Base
  has_attached_file :img, styles: { medium: "650x400>", thumb: "100x100>" }, default_url: "/imgs/:style/imgD.jpg"
  validates_attachment_content_type :img, content_type: /\Aimage\/.*\Z/
end
