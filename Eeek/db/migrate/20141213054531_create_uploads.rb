class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.text :text
      t.string :attachment
      t.string :complimentary
      t.references :user
      t.timestamps
    end
  end
end
