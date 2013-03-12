class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :eyt
      t.string :sky
      t.string :tg
      t.string :ebh
      t.string :elt
      t.string :ilt
      
      t.timestamps
    end
  end
end
