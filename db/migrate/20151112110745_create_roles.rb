class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title, null: false
      t.string :description

      t.timestamps
    end
  end
end
