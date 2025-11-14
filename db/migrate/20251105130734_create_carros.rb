class CreateCarros < ActiveRecord::Migration[8.1]
  def change
    create_table :carros do |t|
      t.string :marca, limit: 100
      t.string :modelo, limit: 125
      t.integer :ano

      t.timestamps
    end
  end
end
