class AddFileSizeToUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :uploads, :file_size, :float
  end
end
