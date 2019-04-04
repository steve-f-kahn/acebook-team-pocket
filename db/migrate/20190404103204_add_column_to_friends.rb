class AddColumnToFriends < ActiveRecord::Migration[5.1]
  def change
    add_reference :friends, :signups, foreign_key: true
    rename_column :friends, :signups_id, :receiver_id
  end
end
