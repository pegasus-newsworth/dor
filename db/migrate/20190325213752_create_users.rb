class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :link
      t.integer :section
      t.boolean :done

      t.timestamps
    end
  end
end
