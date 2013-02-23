class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :attach_file_name
      t.string :attach_content_type

      t.timestamps
    end
  end
end
