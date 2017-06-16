class CreateRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :repairs do |t|
      t.string :year
      t.string :make
      t.string :model
      t.string :repairname
      t.string :repaircost

      t.timestamps
    end
  end
end
