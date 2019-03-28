class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :position
      t.string :section
      t.string :section_position
      t.string :hotel
      t.string :address
      t.string :hotel_phone
      t.string :phone
      t.string :fax
      t.string :email_pro
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
