class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
