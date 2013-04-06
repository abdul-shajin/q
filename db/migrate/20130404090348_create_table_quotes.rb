class CreateTableQuotes < ActiveRecord::Migration
  def up
  	create_table :quotes do |t|
      t.text :quote, :null => false
      t.references :user, :null => false
      t.string :author


      t.timestamps
  	end
  	add_index :quotes, :user_id
  	#add_index :quotes, :quote
  end

  def down
  	drop_table :quotes
  	remove_index :quotes, :user_id
  	remove_index :quotes, :quote
  end
end
