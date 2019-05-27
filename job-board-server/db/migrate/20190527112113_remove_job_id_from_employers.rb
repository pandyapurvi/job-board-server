class RemoveJobIdFromEmployers < ActiveRecord::Migration[5.2]
  def change
    remove_column :employers, :job_id, :integer
  end
end
