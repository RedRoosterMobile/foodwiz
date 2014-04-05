class UserLevelsAdded < ActiveRecord::Migration
  def change
      #enum: http://stackoverflow.com/questions/14911977/best-way-to-store-enum-value-in-activerecord-and-convert-to-string-for-display
      add_column :users, :user_level, :integer, default: 0
  end
end
