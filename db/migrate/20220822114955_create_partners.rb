class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
