class Conteudo < ActiveRecord::Base
  validates_presence_of :titulo, :subtitulo, :texto, :image
  has_attached_file :image, styles: { large: "1120x480", medium: "300x300", thumb: "150x150" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
