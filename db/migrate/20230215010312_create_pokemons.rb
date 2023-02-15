class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.references :type, null: false, foreign_key: true
      t.integer :total
      t.integer :HP
      t.integer :attack
      t.integer :defense
      t.integer :speed
      t.string :first_ability
      t.string :second_ability
      t.string :hidden_ability

      t.timestamps
    end
  end
end
