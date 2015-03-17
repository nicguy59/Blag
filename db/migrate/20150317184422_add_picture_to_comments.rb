class AddPictureToComments < ActiveRecord::Migration
  def change
    add_column :comments, :picture_url, :string
  end
end
