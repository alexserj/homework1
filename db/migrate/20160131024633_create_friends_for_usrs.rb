class CreateFriendsForUsrs < ActiveRecord::Migration
  def change
    create_table :friends_for_usrs do |t|
      t.string :friends

      t.timestamps null: false
    end
  end
end
