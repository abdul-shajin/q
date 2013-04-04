class RemovePosts < ActiveRecord::Migration
  def up
  	drop_table :posts
  end

  def down
  	create_table :posts
  end
end
