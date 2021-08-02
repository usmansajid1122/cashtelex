class Service < ApplicationRecord
  # upload image using Active Storage. For image variants we are using ImageMagick
  has_one_attached :banner
  validate :validate_banner

  has_many :service_providers

  def validate_banner
    if banner.attached?
      acceptable_types = ["image/jpeg", "image/png"]
      unless acceptable_types.include?(banner.content_type)
        errors.add(:banner, "must be a JPEG or PNG")
      end
    end  
  end
end
