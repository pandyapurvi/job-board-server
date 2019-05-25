class CreateEmployers < ActiveRecord::Migration[5.2]
  def change
    create_table :employers do |t|
      t.text :company_name
      t.text :compamy_type
      t.text :size
      t.integer :no_employee
      t.text :description
      t.text :city
      t.text :website
      t.text :vacancy

      t.timestamps
    end
  end
end
