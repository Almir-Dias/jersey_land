class CreateShirts < ActiveRecord::Migration[7.1]
  def change
    create_table :shirts do |t|
      t.string :team
      t.string :gender
      t.string :size
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
