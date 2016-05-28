class PostBodyRequired < ActiveRecord::Migration
  def change
    change_column :posts, :title, :string, null: false
    change_column :posts, :body, :text,null: false
#    change_table :posts do |t|
#      t.change :title, :string, {nu}
#    end
  end

end
