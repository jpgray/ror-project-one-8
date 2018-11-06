class CreateDuelists < ActiveRecord::Migration[5.2]
  def change
    create_table :duelists do |t|
      t.string :name
      t.integer :age
      t.integer :rating
      t.string :favourite_card
      t.string :picture
      t.references :user

      t.timestamps
    end
  end
end
