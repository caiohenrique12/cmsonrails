class CreateConteudos < ActiveRecord::Migration
  def change
    create_table :conteudos do |t|
      t.string :titulo
      t.string :subtitulo
      t.text :texto

      t.timestamps null: false
    end
  end
end
