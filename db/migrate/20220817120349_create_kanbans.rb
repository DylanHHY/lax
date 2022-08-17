class CreateKanbans < ActiveRecord::Migration[6.1]
  def change
    create_table :kanbans do |t|
      t.string :title
      t.text :content
      t.string :state

      t.timestamps
    end
  end
end
