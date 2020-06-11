class CreateInvests < ActiveRecord::Migration[6.0]
  def change
    create_table :invests do |t|
      t.string :name
      t.string :symbol
      t.integer :price

      t.timestamps
    end
  end
end
