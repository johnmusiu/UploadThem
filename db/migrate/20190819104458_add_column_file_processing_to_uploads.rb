class AddColumnFileProcessingToUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :uploads, :file_processing, :boolean, null: false, default: false
    add_column :uploads, :file_tmp, :string
  end
end
