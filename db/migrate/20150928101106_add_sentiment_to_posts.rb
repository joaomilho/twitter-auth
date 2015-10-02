class AddSentimentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :sentiment, :text
  end
end
