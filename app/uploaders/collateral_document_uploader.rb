class CollateralDocumentUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true # Force version generation at upload time.

  version :thumnail do
    process convert: 'jpg'
    cloudinary_transformation effect: "shadow", x: 30, y: 30
  end
end
