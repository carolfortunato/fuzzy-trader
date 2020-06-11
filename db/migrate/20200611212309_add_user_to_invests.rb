class AddUserToInvests < ActiveRecord::Migration[6.0]
  def change
    add_reference :invests, :user, null: false, foreign_key: true
  end
end
