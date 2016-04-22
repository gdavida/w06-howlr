class CreateWolfTable < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string 		:name, null: false
      t.string 		:picture_url, null: false
      t.string 	:caption, null: false
    end
  end
end