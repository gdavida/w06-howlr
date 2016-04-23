class CreateHowlbackTable < ActiveRecord::Migration
  def change
    create_table :howlbacks do |t|
      t.integer 	:howl_id, null: false
      t.integer 	:wolf_id, null: false
      t.string 		:response_image_url
      t.integer		:likes
      t.string		:message
    end
  end
end