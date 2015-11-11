class CreateAuditions < ActiveRecord::Migration
  def change
  	create_table :auditions do |t|
  		t.string :title, null: false
  		t.string :monologue, null: false

  		t.timestamps
  	end
  end
end
