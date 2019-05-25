class AddJobIdToEmployers < ActiveRecord::Migration[5.2]
  def change
    add_column :employers, :job_id, :integer
  end
end
