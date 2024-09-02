class Conversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.text :name
      t.boolean :is_group, default: false
      t.timestamps
    end
  end
end
