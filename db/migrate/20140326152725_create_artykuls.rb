class CreateArtykuls < ActiveRecord::Migration[5.1]
  def up
    create_table :artykuls do |t|
    	t.integer "strona_id"
    	t.string "nazwa"
    	t.integer "pozycja"
    	t.boolean "widoczny", :default => true
    	t.text "zawartosc"
    	t.attachment :zdjecie
      t.timestamps
    end
  end
  def down
  	drop_table :artykuls
  end
end
