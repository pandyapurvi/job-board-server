class AddUserIdToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :user_id, :integer
  end
end
