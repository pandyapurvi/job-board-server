class AddUserIdToSeeker < ActiveRecord::Migration[5.2]
  def change
    add_column :seekers, :user_id, :integer
  end
end
