class AlterarTamanhoNome < ActiveRecord::Migration[8.1]
  def change
    change_column :carros, :marca, :string, limit: 150
    change_column :carros, :modelo, :string, limit: 200
  end
end
