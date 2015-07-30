class Restaurant < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :reviews

	validates :name, :address, :phone, :website, :image, presence: true

	validates :address, format: { with: /https?:\/\/.*\z/,
    message: "Must be in the format 350 Fifth Avenue, New York, NY 10118" }

	validates :phone, format: { with: /\(\d{3}\) \d{3}-\d{4}\z/,
    message: "Must be in the format (123) 456-7890" }

    validates :website, format: { with: /\A\d+[^,]+,[^,]+, [A-Z]{2} \d{5}\z/,
    message: "Must start with http:// or https://" }
    
    
end
