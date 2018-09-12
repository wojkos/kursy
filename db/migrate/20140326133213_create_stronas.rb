class CreateStronas < ActiveRecord::Migration[5.1]
  def up
    create_table :stronas do |t|
    	t.integer "kategorie_id"
    	t.string  "nazwa"
    	t.integer "pozycja"
    	t.boolean "widoczna", :default=>true
      t.timestamps
    end
    add_index("stronas", "kategorie_id")
  end

  def down
  	drop_table :stronas
  end
end
