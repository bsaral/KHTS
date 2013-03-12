class AddContentOnUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :lesson, :string
    add_column :uploads, :unite, :string
  end
end
