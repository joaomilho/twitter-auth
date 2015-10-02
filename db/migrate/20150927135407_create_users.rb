class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: false do |t|
      t.string :id, null: false
      t.string :name
      t.text :data

      t.timestamps null: false
    end

    add_index :users, :id, unique: true

  end
end
