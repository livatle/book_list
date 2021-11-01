class RenameTilteColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :tilte, :title
  end
end
