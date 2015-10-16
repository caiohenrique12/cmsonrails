class Categoria < ActiveRecord::Base
  validates_presence_of :nome
  has_many :conteudos
end
