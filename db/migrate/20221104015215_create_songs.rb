class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :lyrics
      t.float :duration

      t.timestamps
    end
  end
end
