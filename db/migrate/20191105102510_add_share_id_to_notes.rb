class AddShareIdToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :share_id, :string
  end
end
