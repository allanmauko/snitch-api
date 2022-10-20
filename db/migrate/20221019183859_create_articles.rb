class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.integer :category_id
      t.integer :author_id
      t.integer :comment_id
      t.integer :like_id
      t.integer :user_id
      t.integer :bookmark_id
      t.datetime :date_posted

      t.timestamps
    end
  end
end
