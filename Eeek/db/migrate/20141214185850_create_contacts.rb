class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :contact_name
    	t.string :phone_number
    	t.references :user
      t.timestamps
    end
  end
end