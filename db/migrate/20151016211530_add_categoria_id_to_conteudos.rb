class AddCategoriaIdToConteudos < ActiveRecord::Migration
  def change
    add_reference :conteudos, :categoria, index: true, foreign_key: true
  end
end
