class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.integer :job_id
      t.integer :seeker_id
      t.text :name
      t.text :resume
      t.text :cover_letter

      t.timestamps
    end
  end
end
