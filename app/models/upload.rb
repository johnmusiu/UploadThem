class Upload < ApplicationRecord
  mount_uploader :file, FileUploader

  validates_presence_of :file

  def name
    file.path.split("/").last
  end
end
