class ImageUploader < CarrierWave::Uploader::Base


  ##### **** For LocalHost ***** #####
  # storage :file
  #
  # def store_dir
  #   "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  # end
  ##### **** For LocalHost ***** #####


#########################################################


  ##### **** For Heroku ***** #####
  storage :fog
  ##### **** For Heroku ***** #####


end
