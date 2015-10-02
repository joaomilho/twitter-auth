class AddKloutToUsers < ActiveRecord::Migration
  def change
    add_column :users, :klout, :float
  end
end
