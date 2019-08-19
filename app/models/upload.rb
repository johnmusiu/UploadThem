class Upload < ApplicationRecord
  mount_uploader :file, FileUploader

  validates_presence_of :file

  def name
    file.path.split("/").last unless file.nil?
  end
end
