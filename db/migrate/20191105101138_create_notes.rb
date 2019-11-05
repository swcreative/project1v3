class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :title
      t.text :post
      t.integer :user_id

      t.timestamps
    end
  end
end
