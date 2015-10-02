class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :twitter_id
      t.string :user
      t.text :text
      t.integer :favorite_count
      t.string :filter_level
      t.string :lang
      t.integer :retweet_count
      t.string :source
      t.text :full_text
      t.string :uri

      t.timestamps null: false
    end
  end
end
