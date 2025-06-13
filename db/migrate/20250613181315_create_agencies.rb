class CreateAgencies < ActiveRecord::Migration[8.0]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :owner_email
      t.string :subdomain
      t.string :logo_url
      t.string :contact_phone
      t.string :status
      t.string :timezone

      t.timestamps
    end
  end
end
