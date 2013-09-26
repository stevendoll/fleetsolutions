class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments, id: :uuid do |t|
      t.string :commenter
      t.uuid :post_id
      t.string :email
      t.date :published_on
      t.text :body

      t.timestamps
    end
  end
end
