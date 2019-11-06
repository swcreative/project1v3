class AddSharePriceShares < ActiveRecord::Migration[6.0]
  def change
    add_column :shares, :price, :float
  end
end
