class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :article_id
      t.integer :user_id
    end
  end
end
