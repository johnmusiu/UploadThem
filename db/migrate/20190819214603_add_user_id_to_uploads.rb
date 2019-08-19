class AddUserIdToUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :uploads, :user_id, :int
  end
end
