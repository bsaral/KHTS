class CreateUnites < ActiveRecord::Migration
  def change
    create_table :unites do |t|
      t.string :u_eyt
      t.string :u_sky
      t.string :u_tg
      t.string :u_ebh
      t.string :u_elt
      t.string :u_ilt
      
      t.timestamps
    end
  end
end
