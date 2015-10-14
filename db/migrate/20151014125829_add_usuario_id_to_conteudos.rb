class AddUsuarioIdToConteudos < ActiveRecord::Migration
  def change
    add_reference :conteudos, :usuario, index: true, foreign_key: true
  end
end
