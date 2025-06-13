class CreateAgencyAdmins < ActiveRecord::Migration[8.0]
  def change
    create_table :agency_admins do |t|
      t.references :agency, null: false, foreign_key: true
      t.string :email
      t.string :name
      t.string :password_hash
      t.string :role
      t.string :status

      t.timestamps
    end
  end
end
