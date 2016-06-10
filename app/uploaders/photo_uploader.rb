class PhotoUploader < CarrierWave::Uploader::Base
  # ...
  include CarrierWave::MiniMagick
  
  # Que tipo de strorage usará este uploader  

  version :thumb do
    process resize_to_fill: [200,200]
  end

  def store_dir
    # Como y donde guardar el archivo ...
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
   
  end
  storage :file

  # Versiones del archivo ...

  #Que extensiones vas a aceptar
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
  
end