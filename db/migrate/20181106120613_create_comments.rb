class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.references :user
      t.references :card

      t.timestamps
    end
  end
end
