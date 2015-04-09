class Mood < ActiveRecord::Migration
  def change
  	create_table :moods do |t|
  		t.references :user
  		t.integer :scale
  		t.text :notes
  		t.timestamps
  	end
  end
end
