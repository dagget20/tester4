class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      
      t.string :title
      t.integer :length
      t.integer :calories
      t.string :url

      t.timestamps
    end
  end
end
