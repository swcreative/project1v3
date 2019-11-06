class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :notes, :share_id, 'integer USING CAST(share_id AS integer)'
  end
end
