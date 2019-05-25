class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.text :title
      t.date :pod
      t.text :description
      t.text :level
      t.text :company_type
      t.integer :salary
      t.text :duration
      t.date :cod
      t.text :city

      t.timestamps
    end
  end
end
