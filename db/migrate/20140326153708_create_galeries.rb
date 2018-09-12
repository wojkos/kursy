class CreateGaleries < ActiveRecord::Migration[5.1]
  def up
    create_table :galeries do |t|
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.text "opis"
    	t.boolean "widoczna", :default=>false
    	t.attachment :zdjecie
      t.timestamps
    end
  end

  def down
  	  	drop_table :galeries
  end
end
