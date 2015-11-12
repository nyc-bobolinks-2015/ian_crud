class CreateActorroles < ActiveRecord::Migration
  def change
    create_table :actorrole do |t|
      t.integer :audition_id
      t.integer :role_id

      t.timestamps (null:false)
    end
  end
end
