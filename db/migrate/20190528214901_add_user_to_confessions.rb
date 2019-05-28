class AddUserToConfessions < ActiveRecord::Migration[5.2]
  def change
    add_reference :confessions, :user, foreign_key: true
  end
end
