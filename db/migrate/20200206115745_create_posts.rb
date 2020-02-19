class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string "drop_url", null: false
      t.string "beyond_url", null: false
      t.string "varon_url", null: false
      t.timestamps
    end
  end
end
