class AddUserToRepair < ActiveRecord::Migration[5.0]
  def change
    add_reference :repairs, :user, foreign_key: true
  end
end
