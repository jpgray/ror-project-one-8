class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :atk
      t.integer :def
      t.string :picture
      t.references :user
      t.references :duelist

      t.timestamps
    end
  end
end
