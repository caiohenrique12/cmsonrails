class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :endereco
      t.string :telefone
      t.string :celular
      t.string :email
      t.text :informacao

      t.timestamps null: false
    end
  end
end
