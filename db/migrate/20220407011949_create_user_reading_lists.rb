class CreateUserReadingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_reading_lists do |t|
      t.references :user, foreign_key: true
      t.references :reading_list, foreign_key: true
      t.string :isbn
      t.string :name
      t.string :author
      t.string :image
      t.string :thumbnail
      t.string :info_link

      t.timestamps
    end
  end
end
