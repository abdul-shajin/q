class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
    	t.string :name
    	t.string :location
      t.timestamps
    end
  end
end
