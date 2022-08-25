class AddCategoryToPartnerss < ActiveRecord::Migration[7.0]
  def change
    add_column :partners, :category, :string
  end
end
