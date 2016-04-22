class CreateWolfTable < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string 		:name
      t.string 		:picture_url
      t.integer 	:caption
    end
  end
end