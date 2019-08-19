class Upload < ApplicationRecord
  mount_uploader :file, FileUploader
  process_in_background :file

  validates_presence_of :file
  belongs_to :user

  def name
    file.path.split("/").last unless file.nil?
  end
end
