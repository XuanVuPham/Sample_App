class CreateCommentposts < ActiveRecord::Migration
  def change
    create_table :commentposts do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true
      t.references :micropost, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :commentposts, [:user_id, :created_at]
    add_index :commentposts, [:micropost_id, :created_at]
  end
end
