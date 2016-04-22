class CreateWolfTable < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string 		:name, null: false
      t.string 		:picture_url, null: false
      t.integer 	:caption, null: false
    end
  end
end