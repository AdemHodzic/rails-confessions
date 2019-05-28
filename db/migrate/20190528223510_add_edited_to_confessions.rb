class AddEditedToConfessions < ActiveRecord::Migration[5.2]
  def change
    add_column :confessions, :edited, :boolean
  end
end
