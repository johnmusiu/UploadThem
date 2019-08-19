class AddContentTypeToUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :uploads, :content_type, :string
  end
end
