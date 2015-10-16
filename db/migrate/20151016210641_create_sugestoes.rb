class CreateSugestoes < ActiveRecord::Migration
  def change
    create_table :sugestoes do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.text :texto

      t.timestamps null: false
    end
  end
end
