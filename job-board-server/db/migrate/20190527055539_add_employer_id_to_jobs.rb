class AddEmployerIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :employer_id, :integer
  end
end
