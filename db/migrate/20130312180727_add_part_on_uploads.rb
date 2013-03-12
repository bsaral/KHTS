class AddPartOnUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :part, :string
    
  end
end
