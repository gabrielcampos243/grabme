class AddPriceToPartnerss < ActiveRecord::Migration[7.0]
  def change
    add_column :partners, :price, :float
  end
end
