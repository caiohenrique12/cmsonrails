class AddAttachmentImageToConteudos < ActiveRecord::Migration
  def self.up
    change_table :conteudos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :conteudos, :image
  end
end
