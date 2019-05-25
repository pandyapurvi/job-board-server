class CreateSeekers < ActiveRecord::Migration[5.2]
  def change
    create_table :seekers do |t|
      t.text :name
      t.text :emailid
      t.integer :pnone
      t.text :social_link
      t.text :resume
      t.text :cover_letter
      t.integer :experience_year
      t.text :notice
      t.text :current_title

      t.timestamps
    end
  end
end
