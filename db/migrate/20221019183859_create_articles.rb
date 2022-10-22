class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.integer :category_id
      t.integer :author_id
      t.integer :number_of_likes
      t.string :image_url

      t.timestamps
    end
  end
end
