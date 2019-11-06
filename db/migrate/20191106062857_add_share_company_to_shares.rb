class AddShareCompanyToShares < ActiveRecord::Migration[6.0]
  def change
    add_column :shares, :company, :text
  end
end
