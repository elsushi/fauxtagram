class AddSendLinkToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :send_link, :string
  end
end
