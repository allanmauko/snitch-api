class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :count
      t.integer :user_id
      t.integer :article_id
    end
  end
end
