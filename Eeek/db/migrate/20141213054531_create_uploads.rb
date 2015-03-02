class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string :name
      t.text :text
      t.string :attachment
      t.references :user
      t.timestamps
    end
  end
end
