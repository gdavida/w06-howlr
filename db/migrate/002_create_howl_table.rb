class CreateHowlTable < ActiveRecord::Migration
  def change
    create_table :howls do |t|
      t.string 		:howl
      t.integer 	:wolf_id
      t.string 		:share_image_url
      t.integer		:likes
    end
  end
end