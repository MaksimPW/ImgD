class AddAttachmentImgToWords < ActiveRecord::Migration
  def self.up
    change_table :words do |t|
      t.attachment :img
    end
  end

  def self.down
    remove_attachment :words, :img
  end
end
