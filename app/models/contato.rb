class Contato < ActiveRecord::Base
  validates_presence_of :endereco, :telefone, :celular, :email, :informacao
end
