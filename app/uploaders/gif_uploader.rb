class GifUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :aws
  def store_dir
    nil 
  end
  def filename
    model.file_path 
  end
  version :s_160 do
    self.aws_bucket = "crystal-hair-s"
    process resize_to_fit: [160,160]
  end
  version :m_400 do
    self.aws_bucket = "crystal-hair-m"
    process resize_to_fit: [400,400]
  end
  version :l_1000 do
    self.aws_bucket = "crystal-hair-l"
    process resize_to_fit: [1000,1000]
  end
  def extension_whitelist
    %w(gif gifv)
  end
end


