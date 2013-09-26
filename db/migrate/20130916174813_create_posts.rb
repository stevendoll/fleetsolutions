class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, id: :uuid do |t|
      t.string :title
      t.uuid :author_id
      t.date :published_on
      t.text :teaser
      t.text :body

      t.timestamps
    end
  end
end
