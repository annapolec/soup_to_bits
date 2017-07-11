class ChangeNameToTitleInPosts < ActiveRecord::Migration
  def change
    rename_column :soups, :name, :title
  end
end
