class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :password
      t.text :introduction

      t.timestamps
    end
  end
end
