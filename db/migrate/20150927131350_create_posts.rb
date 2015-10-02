class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, id: false do |t|
      t.string :id, null: false
      t.string :user_id, null: false
      t.text :data

      t.timestamps null: false
    end

    add_index :posts, :id, unique: true

  end
end
