class AddDeletedAtToKanban < ActiveRecord::Migration[6.1]
  def change
    add_column :kanbans, :deleted_at, :datetime
    add_index :kanbans, :deleted_at
  end
end
