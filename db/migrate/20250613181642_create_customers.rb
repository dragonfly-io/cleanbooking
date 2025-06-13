class CreateCustomers < ActiveRecord::Migration[8.0]
  def change
    create_table :customers do |t|
      t.references :agency, null: false, foreign_key: true
      t.string :email
      t.string :name
      t.string :phone
      t.string :password_hash

      t.timestamps
    end
  end
end
