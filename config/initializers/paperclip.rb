Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3.amazonaws.com'

#Rails development which paperclip
if Rails.env.development?
	Paperclip::Attachment.default_options[:url] = '/system/:attachment/:id/:style/:filename'
	Paperclip::Attachment.default_options[:path] = ':rails_root/public/system/:attachment/:id/:style/:filename'
end