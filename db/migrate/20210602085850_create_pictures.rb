class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.bigint :post_id
      t.string :caption

      t.timestamps
    end
    add_foreign_key :pictures, :posts
  end
end
