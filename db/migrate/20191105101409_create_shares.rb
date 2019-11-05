class CreateShares < ActiveRecord::Migration[6.0]
  def change
    create_table :shares do |t|
      t.text :code

      t.timestamps
    end
  end
end
