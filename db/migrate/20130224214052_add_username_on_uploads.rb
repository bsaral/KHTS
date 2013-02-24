class AddUsernameOnUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :username, :string
    add_column :uploads, :user_id, :integer
  end
end
